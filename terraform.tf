provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
ami = "ami-03a6eaae9938c858c"
instance_type = "t2.micro"
}



provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 2
ami = "ami-03a6eaae9938c858c"
instance_type = "t2.micro"
}


provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
ami = "ami-03a6eaae9938c858c"
instance_type = var.instance_type
}

variable "instance_type" {
description = ""
type = string
default = "t2.micro"
}


provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
ami = "ami-03a6eaae9938c858c"
instance_type = "t2.micro"
count = var.instance_count
}

variable "instance_count" {
description = ""
type = number
default = 3
}



provider "aws" {
region = "us-east-1"
}

/*resource "aws_instance" "one" {
ami = "ami-03a6eaae9938c858c"
instance_type = "t2.micro"
count = var.instance_count
}*/

resource "aws_iam_user" "two" {
count = length(var.user_names)
name = var.user_names[count.index]
}

variable "user_names" {
description = ""
type = list(string)
default = ["vinod", "ganesh", "suresh", "anil"]
}


provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
ami = "ami-03a6eaae9938c858c"
instance_type = "t2.micro"
tags = var.instance_tags
}

variable "instance_tags" {
description = ""
type = map(string)
default = {
Name = "appserver"
Env = "Prod"
Client = "Swiggy"
Com = "Tcs"
}
}

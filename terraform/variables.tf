variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-north-1" # change to your preferred region
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "aws-devops-ecs"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "CIDRs for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "CIDRs for private subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "container_port" {
  description = "Port your container listens on"
  type        = number
  default     = 3000
}

variable "fargate_cpu" {
  description = "Fargate task CPU units"
  type        = number
  default     = 256
}

variable "fargate_memory" {
  description = "Fargate task memory (MB)"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 2
}

variable "min_capacity" {
  description = "Min tasks for autoscaling"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "Max tasks for autoscaling"
  type        = number
  default     = 4
}

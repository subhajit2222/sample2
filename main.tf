#Create a provider block of code for Azure Cloud Platform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

#Create Resource - Resource Group

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "eastus2"
}

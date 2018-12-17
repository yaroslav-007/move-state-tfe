#####After we performed "terraform init" on the commend part, we add the uncommend one below
##### we peformed "terraform state mv random_pet.name module.random_pet"
#####after me put  random_pet into module and perform "terraform apply", zero resources should be added


resource "random_pet" "name" {
 length    = "4"
 separator = "-"
}

resource "null_resource" "hello" {
 provisioner "local-exec" {
    command = "echo Hello ${random_pet.name.id}"
  }
}



typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_nvm_access {int command; int config; int offset; int data_size; } ;
typedef int device_t ;


 int I40E_NVM_READ ;
 int device_printf (int ,char*,...) ;

void
ixl_print_nvm_cmd(device_t dev, struct i40e_nvm_access *nvma)
{
 if ((nvma->command == I40E_NVM_READ) &&
     ((nvma->config & 0xFF) == 0xF) &&
     (((nvma->config & 0xF00) >> 8) == 0xF) &&
     (nvma->offset == 0) &&
     (nvma->data_size == 1)) {

 }
 else if (nvma->command == I40E_NVM_READ) {

 }
 else {
  switch (nvma->command) {
  case 0xB:
   device_printf(dev, "- command: I40E_NVM_READ\n");
   break;
  case 0xC:
   device_printf(dev, "- command: I40E_NVM_WRITE\n");
   break;
  default:
   device_printf(dev, "- command: unknown 0x%08x\n", nvma->command);
   break;
  }

  device_printf(dev, "- config (ptr)  : 0x%02x\n", nvma->config & 0xFF);
  device_printf(dev, "- config (flags): 0x%01x\n", (nvma->config & 0xF00) >> 8);
  device_printf(dev, "- offset : 0x%08x\n", nvma->offset);
  device_printf(dev, "- data_s : 0x%08x\n", nvma->data_size);
 }
}

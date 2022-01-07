
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int EINVAL ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;


 int pci_clear_command_bit (int ,int ,int ) ;

int
pci_disable_io_method(device_t dev, device_t child, int space)
{
 uint16_t bit;

 switch(space) {
 case 129:
  bit = PCIM_CMD_PORTEN;
  break;
 case 128:
  bit = PCIM_CMD_MEMEN;
  break;
 default:
  return (EINVAL);
 }
 pci_clear_command_bit(dev, child, bit);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIM_CMD_BUSMASTEREN ;
 int pci_clear_command_bit (int ,int ,int ) ;

int
pci_disable_busmaster_method(device_t dev, device_t child)
{
 pci_clear_command_bit(dev, child, PCIM_CMD_BUSMASTEREN);
 return (0);
}

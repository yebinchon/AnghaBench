
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int PCIR_COMMAND ;
 int PCI_READ_CONFIG (int ,int ,int ,int) ;
 int PCI_WRITE_CONFIG (int ,int ,int ,int ,int) ;

__attribute__((used)) static __inline void
pci_set_command_bit(device_t dev, device_t child, uint16_t bit)
{
 uint16_t command;

 command = PCI_READ_CONFIG(dev, child, PCIR_COMMAND, 2);
 command |= bit;
 PCI_WRITE_CONFIG(dev, child, PCIR_COMMAND, command, 2);
}

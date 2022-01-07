
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
pci_porten(device_t dev)
{
 return (pci_read_config(dev, PCIR_COMMAND, 2) & PCIM_CMD_PORTEN) != 0;
}

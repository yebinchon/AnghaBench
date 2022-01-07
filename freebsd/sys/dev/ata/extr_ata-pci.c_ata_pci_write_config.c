
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int pci_write_config (int ,int,int ,int) ;

void
ata_pci_write_config(device_t dev, device_t child, int reg,
    uint32_t val, int width)
{

 pci_write_config(dev, reg, val, width);
}

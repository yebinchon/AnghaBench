
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIR_IOBASEH_1 ;
 int PCIR_IOBASEL_1 ;
 int PCIR_IOLIMITH_1 ;
 int PCIR_IOLIMITL_1 ;
 int PCIR_MEMBASE_1 ;
 int PCIR_MEMLIMIT_1 ;
 int PCIR_PMBASEH_1 ;
 int PCIR_PMBASEL_1 ;
 int PCIR_PMLIMITH_1 ;
 int PCIR_PMLIMITL_1 ;
 int pci_write_config (int ,int ,int,int) ;

void
pcib_bridge_init(device_t dev)
{
 pci_write_config(dev, PCIR_IOBASEL_1, 0xff, 1);
 pci_write_config(dev, PCIR_IOBASEH_1, 0xffff, 2);
 pci_write_config(dev, PCIR_IOLIMITL_1, 0, 1);
 pci_write_config(dev, PCIR_IOLIMITH_1, 0, 2);
 pci_write_config(dev, PCIR_MEMBASE_1, 0xffff, 2);
 pci_write_config(dev, PCIR_MEMLIMIT_1, 0, 2);
 pci_write_config(dev, PCIR_PMBASEL_1, 0xffff, 2);
 pci_write_config(dev, PCIR_PMBASEH_1, 0xffffffff, 4);
 pci_write_config(dev, PCIR_PMLIMITL_1, 0, 2);
 pci_write_config(dev, PCIR_PMLIMITH_1, 0, 4);
}

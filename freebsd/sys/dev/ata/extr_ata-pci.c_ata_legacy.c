
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIP_STORAGE_IDE_MASTERDEV ;
 int PCIP_STORAGE_IDE_MODEPRIM ;
 int PCIP_STORAGE_IDE_MODESEC ;
 int PCIR_BAR (int) ;
 int PCIR_PROGIF ;
 int PCIR_SUBCLASS ;
 int PCIS_STORAGE_IDE ;
 int pci_read_config (int ,int ,int) ;

int
ata_legacy(device_t dev)
{
    return (((pci_read_config(dev, PCIR_SUBCLASS, 1) == PCIS_STORAGE_IDE) &&
      (pci_read_config(dev, PCIR_PROGIF, 1)&PCIP_STORAGE_IDE_MASTERDEV)&&
      ((pci_read_config(dev, PCIR_PROGIF, 1) &
        (PCIP_STORAGE_IDE_MODEPRIM | PCIP_STORAGE_IDE_MODESEC)) !=
       (PCIP_STORAGE_IDE_MODEPRIM | PCIP_STORAGE_IDE_MODESEC))) ||
     (!pci_read_config(dev, PCIR_BAR(0), 4) &&
      !pci_read_config(dev, PCIR_BAR(1), 4) &&
      !pci_read_config(dev, PCIR_BAR(2), 4) &&
      !pci_read_config(dev, PCIR_BAR(3), 4) &&
      !pci_read_config(dev, PCIR_BAR(5), 4)));
}

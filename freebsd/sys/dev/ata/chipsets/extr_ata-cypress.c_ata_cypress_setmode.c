
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {scalar_t__ unit; } ;
typedef int device_t ;


 int ATA_WDMA2 ;
 int device_get_parent (int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int min (int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_cypress_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_channel *ch = device_get_softc(dev);

 mode = min(mode, ATA_WDMA2);


 if (mode == ATA_WDMA2) {
  pci_write_config(parent, ch->unit ? 0x4e : 0x4c, 0x2020, 2);
 }

 return (mode);
}

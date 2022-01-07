
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int max_dma; } ;


 int ATA_MODE_MASK ;
 int ATA_UDMA0 ;
 int ATA_WDMA2 ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int min (int,int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_acard_86X_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);
 int devno = (ch->unit << 1) + target;

 mode = min(mode, ctlr->chip->max_dma);

 if (mode >= ATA_WDMA2) {
  u_int16_t reg44 = pci_read_config(parent, 0x44, 2);

  reg44 &= ~(0x000f << (devno << 2));
  if (mode >= ATA_UDMA0)
   reg44 |= (((mode & ATA_MODE_MASK) + 1) << (devno << 2));
  pci_write_config(parent, 0x44, reg44, 2);
  pci_write_config(parent, 0x4a, 0xa6, 1);
  pci_write_config(parent, 0x40 + devno, 0x31, 1);
 }

 return (mode);
}

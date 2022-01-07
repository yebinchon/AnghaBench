
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int legacy; } ;
struct TYPE_2__ {int flags; } ;
struct ata_channel {int flags; TYPE_1__ dma; } ;
typedef int device_t ;


 int ATA_ALTSTAT ;
 int ATA_ALWAYS_DMASTAT ;
 int ATA_BMSTAT_ERROR ;
 int ATA_BMSTAT_INTERRUPT ;
 int ATA_BMSTAT_MASK ;
 int ATA_BMSTAT_PORT ;
 int ATA_DMA_ACTIVE ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_S_BUSY ;
 int DELAY (int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 scalar_t__ dumping ;

int
ata_pci_status(device_t dev)
{
    struct ata_pci_controller *controller =
 device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);

    if ((dumping || !controller->legacy) &&
 ((ch->flags & ATA_ALWAYS_DMASTAT) ||
  (ch->dma.flags & ATA_DMA_ACTIVE))) {
 int bmstat = ATA_IDX_INB(ch, ATA_BMSTAT_PORT) & ATA_BMSTAT_MASK;

 if ((bmstat & ATA_BMSTAT_INTERRUPT) == 0)
     return 0;
 ATA_IDX_OUTB(ch, ATA_BMSTAT_PORT, bmstat & ~ATA_BMSTAT_ERROR);
 DELAY(1);
    }
    if (ATA_IDX_INB(ch, ATA_ALTSTAT) & ATA_S_BUSY) {
 DELAY(100);
 if (ATA_IDX_INB(ch, ATA_ALTSTAT) & ATA_S_BUSY)
     return 0;
    }
    return 1;
}

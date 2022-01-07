
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_pci_controller {TYPE_2__* chip; } ;
struct TYPE_3__ {int max_iosize; } ;
struct ata_channel {int flags; TYPE_1__ dma; } ;
typedef int device_t ;
struct TYPE_4__ {int cfg2; int chiprev; } ;


 int ALI_NEW ;
 int ATA_CHECKS_CABLE ;
 int ATA_NO_48BIT_DMA ;
 int ATA_NO_ATAPI_DMA ;
 int ENXIO ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_ali_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);


    if (ata_pci_ch_attach(dev))
 return ENXIO;

    if (ctlr->chip->cfg2 & ALI_NEW && ctlr->chip->chiprev < 0xc7)
 ch->flags |= ATA_CHECKS_CABLE;

    if (ctlr->chip->chiprev <= 0xc4) {
 ch->flags |= ATA_NO_48BIT_DMA;
 if (ch->dma.max_iosize > 256 * 512)
  ch->dma.max_iosize = 256 * 512;
    }
 if (ctlr->chip->cfg2 & ALI_NEW)
  ch->flags |= ATA_NO_ATAPI_DMA;

    return 0;
}

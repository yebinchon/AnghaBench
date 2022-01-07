
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ata_pci_controller {TYPE_2__* chip; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_6__ {int reset; int stop; int start; } ;
struct ata_channel {int flags; TYPE_1__ hw; TYPE_3__ dma; } ;
typedef int device_t ;
struct TYPE_5__ {scalar_t__ cfg1; } ;


 int ATA_CHECKS_CABLE ;
 int ATA_NO_ATAPI_DMA ;
 int ENXIO ;
 scalar_t__ PR_NEW ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int ata_promise_dmareset ;
 int ata_promise_dmastart ;
 int ata_promise_dmastop ;
 int ata_promise_status ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_promise_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);

    if (ata_pci_ch_attach(dev))
 return ENXIO;

    if (ctlr->chip->cfg1 == PR_NEW) {
        ch->dma.start = ata_promise_dmastart;
        ch->dma.stop = ata_promise_dmastop;
        ch->dma.reset = ata_promise_dmareset;
    }

    ch->hw.status = ata_promise_status;
    ch->flags |= ATA_NO_ATAPI_DMA;
    ch->flags |= ATA_CHECKS_CABLE;
    return 0;
}

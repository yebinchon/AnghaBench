
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
struct TYPE_4__ {int status; } ;
struct ata_channel {int flags; TYPE_2__ hw; } ;
typedef int device_t ;
struct TYPE_3__ {int cfg2; } ;


 int ATA_NO_ATAPI_DMA ;
 int ENXIO ;
 int SII_INTR ;
 int ata_cmd_status ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_cmd_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);


    if (ata_pci_ch_attach(dev))
 return ENXIO;

    if (ctlr->chip->cfg2 & SII_INTR)
 ch->hw.status = ata_cmd_status;

    ch->flags |= ATA_NO_ATAPI_DMA;

    return 0;
}

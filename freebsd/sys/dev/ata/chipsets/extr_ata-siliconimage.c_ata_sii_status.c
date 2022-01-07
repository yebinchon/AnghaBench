
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int r_res2; TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ max_dma; } ;


 int ATA_INL (int ,int) ;
 scalar_t__ ATA_SA150 ;
 int ata_pci_status (int ) ;
 int ata_sata_phy_check_events (int ,int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_sii_status(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int offset0 = ((ch->unit & 1) << 3) + ((ch->unit & 2) << 8);
    int offset1 = ((ch->unit & 1) << 6) + ((ch->unit & 2) << 8);


    if (ctlr->chip->max_dma >= ATA_SA150 &&
 (ATA_INL(ctlr->r_res2, 0x10 + offset0) & 0x00000010))
 ata_sata_phy_check_events(dev, -1);

    if (ATA_INL(ctlr->r_res2, 0xa0 + offset1) & 0x00000800)
 return ata_pci_status(dev);
    else
 return 0;
}

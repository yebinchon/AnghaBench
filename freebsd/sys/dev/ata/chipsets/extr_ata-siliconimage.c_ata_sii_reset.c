
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ata_pci_controller {int r_res2; } ;
struct ata_channel {int unit; scalar_t__ devices; } ;
typedef int device_t ;


 int ATA_INL (int ,int) ;
 int ATA_OUTL (int ,int,int) ;
 int ata_generic_reset (int ) ;
 scalar_t__ ata_sata_phy_reset (int ,int,int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
ata_sii_reset(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int offset = ((ch->unit & 1) << 7) + ((ch->unit & 2) << 8);
    uint32_t val;


    val = ATA_INL(ctlr->r_res2, 0x14c + offset);
    if ((val & 0x3) == 0x1)
 ATA_OUTL(ctlr->r_res2, 0x14c + offset, val & ~0x3);

    if (ata_sata_phy_reset(dev, -1, 1))
 ata_generic_reset(dev);
    else
 ch->devices = 0;
}

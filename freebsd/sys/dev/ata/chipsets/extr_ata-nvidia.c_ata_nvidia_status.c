
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ata_pci_controller {int r_res2; TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; } ;


 int ATA_INB (int ,int) ;
 int ATA_INL (int ,int) ;
 int ATA_OUTB (int ,int,int) ;
 int ATA_OUTL (int ,int,int) ;
 int NV4 ;
 int NVQ ;
 int ata_sata_phy_check_events (int ,int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_nvidia_status(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int offset = ctlr->chip->cfg1 & NV4 ? 0x0440 : 0x0010;
    int shift = ch->unit << (ctlr->chip->cfg1 & NVQ ? 4 : 2);
    u_int32_t istatus;


    if (ctlr->chip->cfg1 & NVQ)
 istatus = ATA_INL(ctlr->r_res2, offset);
    else
 istatus = ATA_INB(ctlr->r_res2, offset);


    if (istatus & (0x0c << shift))
 ata_sata_phy_check_events(dev, -1);


    if (ctlr->chip->cfg1 & NVQ)
 ATA_OUTL(ctlr->r_res2, offset, (0x0f << shift) | 0x00f000f0);
    else
 ATA_OUTB(ctlr->r_res2, offset, (0x0f << shift));


    return (istatus & (0x01 << shift));
}

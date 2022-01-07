
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_pci_controller {int r_res2; TYPE_1__* chip; } ;
struct ata_channel {int unit; int flags; TYPE_2__* r_io; } ;
typedef int device_t ;
struct TYPE_4__ {int offset; int res; } ;
struct TYPE_3__ {scalar_t__ chipid; } ;


 int ATA_NO_SLAVE ;
 int ATA_SATA ;
 size_t ATA_SCONTROL ;
 size_t ATA_SERROR ;
 scalar_t__ ATA_SIS182 ;
 size_t ATA_SSTATUS ;
 int ENXIO ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_sis_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int offset = ch->unit << ((ctlr->chip->chipid == ATA_SIS182) ? 5 : 6);


    if (ata_pci_ch_attach(dev))
 return ENXIO;

    ch->r_io[ATA_SSTATUS].res = ctlr->r_res2;
    ch->r_io[ATA_SSTATUS].offset = 0x00 + offset;
    ch->r_io[ATA_SERROR].res = ctlr->r_res2;
    ch->r_io[ATA_SERROR].offset = 0x04 + offset;
    ch->r_io[ATA_SCONTROL].res = ctlr->r_res2;
    ch->r_io[ATA_SCONTROL].offset = 0x08 + offset;
    ch->flags |= ATA_NO_SLAVE;
    ch->flags |= ATA_SATA;



    return 0;
}

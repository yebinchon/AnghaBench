
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_pci_controller {int r_res2; } ;
struct TYPE_4__ {int status; } ;
struct ata_channel {int unit; int flags; TYPE_2__ hw; TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_3__ {int offset; int res; } ;


 int ATA_NO_SLAVE ;
 int ATA_SATA ;
 size_t ATA_SCONTROL ;
 size_t ATA_SERROR ;
 size_t ATA_SSTATUS ;
 int ENXIO ;
 int ata_nvidia_status ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_nvidia_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);


    if (ata_pci_ch_attach(dev))
 return ENXIO;

    ch->r_io[ATA_SSTATUS].res = ctlr->r_res2;
    ch->r_io[ATA_SSTATUS].offset = (ch->unit << 6);
    ch->r_io[ATA_SERROR].res = ctlr->r_res2;
    ch->r_io[ATA_SERROR].offset = 0x04 + (ch->unit << 6);
    ch->r_io[ATA_SCONTROL].res = ctlr->r_res2;
    ch->r_io[ATA_SCONTROL].offset = 0x08 + (ch->unit << 6);

    ch->hw.status = ata_nvidia_status;
    ch->flags |= ATA_NO_SLAVE;
    ch->flags |= ATA_SATA;
    return 0;
}

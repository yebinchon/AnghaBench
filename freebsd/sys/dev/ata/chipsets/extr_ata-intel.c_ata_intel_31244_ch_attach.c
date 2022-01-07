
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_pci_controller {int r_res2; } ;
struct TYPE_4__ {int tf_write; int status; } ;
struct ata_channel {int unit; TYPE_2__ hw; int flags; TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_3__ {int offset; int res; } ;


 size_t ATA_ALTSTAT ;
 size_t ATA_BMCMD_PORT ;
 size_t ATA_BMDTP_PORT ;
 size_t ATA_BMSTAT_PORT ;
 size_t ATA_COMMAND ;
 size_t ATA_CONTROL ;
 size_t ATA_COUNT ;
 size_t ATA_CYL_LSB ;
 size_t ATA_CYL_MSB ;
 size_t ATA_DATA ;
 size_t ATA_DRIVE ;
 size_t ATA_ERROR ;
 size_t ATA_FEATURE ;
 int ATA_INL (int ,int) ;
 int ATA_MAX_RES ;
 int ATA_NO_SLAVE ;
 int ATA_OUTL (int ,int,int) ;
 int ATA_SATA ;
 size_t ATA_SCONTROL ;
 size_t ATA_SECTOR ;
 size_t ATA_SERROR ;
 size_t ATA_SSTATUS ;
 size_t ATA_STATUS ;
 int ata_intel_31244_status ;
 int ata_intel_31244_tf_write ;
 int ata_pci_dmainit (int ) ;
 int ata_pci_hw (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_intel_31244_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int i;
    int ch_offset;

    ata_pci_dmainit(dev);

    ch_offset = 0x200 + ch->unit * 0x200;

    for (i = ATA_DATA; i < ATA_MAX_RES; i++)
 ch->r_io[i].res = ctlr->r_res2;


    ch->r_io[ATA_DATA].offset = ch_offset + 0x00;
    ch->r_io[ATA_FEATURE].offset = ch_offset + 0x06;
    ch->r_io[ATA_COUNT].offset = ch_offset + 0x08;
    ch->r_io[ATA_SECTOR].offset = ch_offset + 0x0c;
    ch->r_io[ATA_CYL_LSB].offset = ch_offset + 0x10;
    ch->r_io[ATA_CYL_MSB].offset = ch_offset + 0x14;
    ch->r_io[ATA_DRIVE].offset = ch_offset + 0x18;
    ch->r_io[ATA_COMMAND].offset = ch_offset + 0x1d;
    ch->r_io[ATA_ERROR].offset = ch_offset + 0x04;
    ch->r_io[ATA_STATUS].offset = ch_offset + 0x1c;
    ch->r_io[ATA_ALTSTAT].offset = ch_offset + 0x28;
    ch->r_io[ATA_CONTROL].offset = ch_offset + 0x29;


    ch->r_io[ATA_SSTATUS].offset = ch_offset + 0x100;
    ch->r_io[ATA_SERROR].offset = ch_offset + 0x104;
    ch->r_io[ATA_SCONTROL].offset = ch_offset + 0x108;


    ch->r_io[ATA_BMCMD_PORT].offset = ch_offset + 0x70;
    ch->r_io[ATA_BMSTAT_PORT].offset = ch_offset + 0x72;
    ch->r_io[ATA_BMDTP_PORT].offset = ch_offset + 0x74;

    ch->flags |= ATA_NO_SLAVE;
    ch->flags |= ATA_SATA;
    ata_pci_hw(dev);
    ch->hw.status = ata_intel_31244_status;
    ch->hw.tf_write = ata_intel_31244_tf_write;


    ATA_OUTL(ctlr->r_res2, 0x4,
      ATA_INL(ctlr->r_res2, 0x04) | (0x01 << (ch->unit << 3)));
    return 0;
}

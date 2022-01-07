
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ata_pci_controller {int r_res2; TYPE_2__* chip; } ;
struct TYPE_8__ {int max_iosize; } ;
struct TYPE_7__ {int status; int tf_write; int tf_read; } ;
struct ata_channel {int unit; int flags; TYPE_4__ dma; TYPE_3__ hw; TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_6__ {scalar_t__ chipid; } ;
struct TYPE_5__ {int offset; int res; } ;


 size_t ATA_BMCMD_PORT ;
 size_t ATA_BMDTP_PORT ;
 size_t ATA_BMSTAT_PORT ;
 size_t ATA_COMMAND ;
 size_t ATA_CONTROL ;
 size_t ATA_COUNT ;
 size_t ATA_CYL_LSB ;
 size_t ATA_CYL_MSB ;
 size_t ATA_DATA ;
 int ATA_DMA_BEFORE_CMD ;
 size_t ATA_DRIVE ;
 size_t ATA_FEATURE ;
 int ATA_INL (int ,int) ;
 scalar_t__ ATA_K2 ;
 int ATA_KNOWN_PRESENCE ;
 int ATA_MAX_RES ;
 int ATA_NO_SLAVE ;
 int ATA_OUTL (int ,int,int) ;
 int ATA_SATA ;
 size_t ATA_SCONTROL ;
 size_t ATA_SECTOR ;
 size_t ATA_SERROR ;
 size_t ATA_SSTATUS ;
 int ATA_STATUS_IS_LONG ;
 int DEV_BSIZE ;
 int ata_default_registers (int ) ;
 int ata_pci_dmainit (int ) ;
 int ata_pci_hw (int ) ;
 int ata_serverworks_status ;
 int ata_serverworks_tf_read ;
 int ata_serverworks_tf_write ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_serverworks_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int ch_offset;
    int i;

    ch_offset = ch->unit * 0x100;

    for (i = ATA_DATA; i < ATA_MAX_RES; i++)
 ch->r_io[i].res = ctlr->r_res2;


    ch->r_io[ATA_DATA].offset = ch_offset + 0x00;
    ch->r_io[ATA_FEATURE].offset = ch_offset + 0x04;
    ch->r_io[ATA_COUNT].offset = ch_offset + 0x08;
    ch->r_io[ATA_SECTOR].offset = ch_offset + 0x0c;
    ch->r_io[ATA_CYL_LSB].offset = ch_offset + 0x10;
    ch->r_io[ATA_CYL_MSB].offset = ch_offset + 0x14;
    ch->r_io[ATA_DRIVE].offset = ch_offset + 0x18;
    ch->r_io[ATA_COMMAND].offset = ch_offset + 0x1c;
    ch->r_io[ATA_CONTROL].offset = ch_offset + 0x20;
    ata_default_registers(dev);


    ch->r_io[ATA_BMCMD_PORT].offset = ch_offset + 0x30;
    ch->r_io[ATA_BMSTAT_PORT].offset = ch_offset + 0x32;
    ch->r_io[ATA_BMDTP_PORT].offset = ch_offset + 0x34;


    ch->r_io[ATA_SSTATUS].offset = ch_offset + 0x40;
    ch->r_io[ATA_SERROR].offset = ch_offset + 0x44;
    ch->r_io[ATA_SCONTROL].offset = ch_offset + 0x48;

    ch->flags |= ATA_NO_SLAVE | ATA_SATA | ATA_KNOWN_PRESENCE;
    ata_pci_hw(dev);
    ch->hw.tf_read = ata_serverworks_tf_read;
    ch->hw.tf_write = ata_serverworks_tf_write;

    if (ctlr->chip->chipid == ATA_K2) {





 ATA_OUTL(ctlr->r_res2, ch_offset + 0x80,
     ATA_INL(ctlr->r_res2, ch_offset + 0x80) & ~0x00040000);
 ATA_OUTL(ctlr->r_res2, ch_offset + 0x88, 0);
 ch->flags |= ATA_DMA_BEFORE_CMD;






 ch->hw.status = ata_serverworks_status;
 ch->flags |= ATA_STATUS_IS_LONG;
    }


    ch->dma.max_iosize = 64 * DEV_BSIZE;

    ata_pci_dmainit(dev);

    return 0;
}

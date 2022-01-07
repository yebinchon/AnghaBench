
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ata_pci_controller {TYPE_2__* chip; int r_res2; } ;
struct TYPE_6__ {int pm_write; int pm_read; int softreset; int status; int command; } ;
struct ata_channel {int unit; TYPE_3__ hw; int flags; TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_5__ {int cfg2; } ;
struct TYPE_4__ {int offset; int res; } ;


 int ATA_CHECKS_CABLE ;
 int ATA_COMMAND ;
 size_t ATA_CONTROL ;
 int ATA_DATA ;
 size_t ATA_IDX_ADDR ;
 int ATA_NO_SLAVE ;
 int ATA_SATA ;
 size_t ATA_SCONTROL ;
 size_t ATA_SERROR ;
 size_t ATA_SSTATUS ;
 int ATA_USE_16BIT ;
 int PR_CMBO ;
 int PR_CMBO2 ;
 int PR_SATA ;
 int PR_SATA2 ;
 int PR_SX4X ;
 int ata_default_registers (int ) ;
 int ata_generic_hw (int ) ;
 int ata_promise_mio_command ;
 int ata_promise_mio_dmainit (int ) ;
 int ata_promise_mio_pm_read ;
 int ata_promise_mio_pm_write ;
 int ata_promise_mio_softreset ;
 int ata_promise_mio_status ;
 int ata_promise_sx4_command ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_promise_mio_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int offset = (ctlr->chip->cfg2 & PR_SX4X) ? 0x000c0000 : 0;
    int i;

    ata_promise_mio_dmainit(dev);

    for (i = ATA_DATA; i <= ATA_COMMAND; i++) {
 ch->r_io[i].res = ctlr->r_res2;
 ch->r_io[i].offset = offset + 0x0200 + (i << 2) + (ch->unit << 7);
    }
    ch->r_io[ATA_CONTROL].res = ctlr->r_res2;
    ch->r_io[ATA_CONTROL].offset = offset + 0x0238 + (ch->unit << 7);
    ch->r_io[ATA_IDX_ADDR].res = ctlr->r_res2;
    ata_default_registers(dev);
    if ((ctlr->chip->cfg2 & (PR_SATA | PR_SATA2)) ||
 ((ctlr->chip->cfg2 & (PR_CMBO | PR_CMBO2)) && ch->unit < 2)) {
 ch->r_io[ATA_SSTATUS].res = ctlr->r_res2;
 ch->r_io[ATA_SSTATUS].offset = 0x400 + (ch->unit << 8);
 ch->r_io[ATA_SERROR].res = ctlr->r_res2;
 ch->r_io[ATA_SERROR].offset = 0x404 + (ch->unit << 8);
 ch->r_io[ATA_SCONTROL].res = ctlr->r_res2;
 ch->r_io[ATA_SCONTROL].offset = 0x408 + (ch->unit << 8);
 ch->flags |= ATA_NO_SLAVE;
 ch->flags |= ATA_SATA;
    }
    ch->flags |= ATA_USE_16BIT;
    ch->flags |= ATA_CHECKS_CABLE;

    ata_generic_hw(dev);
    if (ctlr->chip->cfg2 & PR_SX4X) {
 ch->hw.command = ata_promise_sx4_command;
    }
    else {
 ch->hw.command = ata_promise_mio_command;
 ch->hw.status = ata_promise_mio_status;
 ch->hw.softreset = ata_promise_mio_softreset;
 ch->hw.pm_read = ata_promise_mio_pm_read;
 ch->hw.pm_write = ata_promise_mio_pm_write;
     }
    return 0;
}

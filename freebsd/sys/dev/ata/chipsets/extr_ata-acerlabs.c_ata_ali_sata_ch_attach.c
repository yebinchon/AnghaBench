
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ata_pci_controller {struct resource* r_res1; struct ali_sata_resources* chipset_data; } ;
struct ata_channel {int unit; int flags; TYPE_1__* r_io; } ;
struct ali_sata_resources {struct resource** bars; } ;
typedef int device_t ;
struct TYPE_2__ {int offset; struct resource* res; } ;


 int ATA_BMCMD_PORT ;
 int ATA_BMDTP_PORT ;
 int ATA_BMIOSIZE ;
 int ATA_COMMAND ;
 size_t ATA_CONTROL ;
 int ATA_DATA ;
 size_t ATA_IDX_ADDR ;
 int ATA_NO_SLAVE ;
 int ATA_SATA ;
 int ata_default_registers (int ) ;
 int ata_pci_dmainit (int ) ;
 int ata_pci_hw (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_ali_sata_ch_attach(device_t dev)
{
    device_t parent = device_get_parent(dev);
    struct ata_pci_controller *ctlr = device_get_softc(parent);
    struct ata_channel *ch = device_get_softc(dev);
    struct ali_sata_resources *res;
    struct resource *io = ((void*)0), *ctlio = ((void*)0);
    int unit01 = (ch->unit & 1), unit10 = (ch->unit & 2);
    int i;

    res = ctlr->chipset_data;
    if (unit01) {
     io = res->bars[2];
     ctlio = res->bars[3];
    } else {
     io = res->bars[0];
     ctlio = res->bars[1];
    }
    ata_pci_dmainit(dev);
    for (i = ATA_DATA; i <= ATA_COMMAND; i ++) {
 ch->r_io[i].res = io;
 ch->r_io[i].offset = i + (unit10 ? 8 : 0);
    }
    ch->r_io[ATA_CONTROL].res = ctlio;
    ch->r_io[ATA_CONTROL].offset = 2 + (unit10 ? 4 : 0);
    ch->r_io[ATA_IDX_ADDR].res = io;
    ata_default_registers(dev);
    if (ctlr->r_res1) {
 for (i = ATA_BMCMD_PORT; i <= ATA_BMDTP_PORT; i++) {
     ch->r_io[i].res = ctlr->r_res1;
     ch->r_io[i].offset = (i - ATA_BMCMD_PORT)+(ch->unit * ATA_BMIOSIZE);
 }
    }
    ch->flags |= ATA_NO_SLAVE;
    ch->flags |= ATA_SATA;


    ata_pci_hw(dev);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ata_pci_controller {struct resource* r_res1; scalar_t__ legacy; } ;
struct ata_channel {int unit; TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_2__ {int offset; struct resource* res; } ;


 int ATA_BMCMD_PORT ;
 int ATA_BMDTP_PORT ;
 int ATA_BMIOSIZE ;
 int ATA_COMMAND ;
 size_t ATA_CONTROL ;
 int ATA_CTLADDR_RID ;
 int ATA_DATA ;
 size_t ATA_IDX_ADDR ;
 int ATA_IOADDR_RID ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int ata_default_registers (int ) ;
 int ata_pci_dmainit (int ) ;
 int ata_pci_hw (int ) ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

int
ata_pci_ch_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    struct resource *io = ((void*)0), *ctlio = ((void*)0);
    int i, rid;

    rid = ATA_IOADDR_RID;
    if (!(io = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE)))
 return ENXIO;

    rid = ATA_CTLADDR_RID;
    if (!(ctlio = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,RF_ACTIVE))){
 bus_release_resource(dev, SYS_RES_IOPORT, ATA_IOADDR_RID, io);
 return ENXIO;
    }

    ata_pci_dmainit(dev);

    for (i = ATA_DATA; i <= ATA_COMMAND; i ++) {
 ch->r_io[i].res = io;
 ch->r_io[i].offset = i;
    }
    ch->r_io[ATA_CONTROL].res = ctlio;
    ch->r_io[ATA_CONTROL].offset = ctlr->legacy ? 0 : 2;
    ch->r_io[ATA_IDX_ADDR].res = io;
    ata_default_registers(dev);
    if (ctlr->r_res1) {
 for (i = ATA_BMCMD_PORT; i <= ATA_BMDTP_PORT; i++) {
     ch->r_io[i].res = ctlr->r_res1;
     ch->r_io[i].offset = (i - ATA_BMCMD_PORT) + (ch->unit*ATA_BMIOSIZE);
 }
    }

    ata_pci_hw(dev);
    return 0;
}

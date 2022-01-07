
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ata_channel {int attached; int flags; scalar_t__ unit; TYPE_1__* r_io; } ;
typedef int rman_res_t ;
typedef int device_t ;
struct TYPE_2__ {int offset; struct resource* res; } ;


 int ATA_COMMAND ;
 size_t ATA_CONTROL ;
 int ATA_CTLADDR_RID ;
 int ATA_CTLIOSIZE ;
 scalar_t__ ATA_CTLOFFSET ;
 int ATA_DATA ;
 size_t ATA_IDX_ADDR ;
 int ATA_IOADDR_RID ;
 int ATA_IOSIZE ;
 int ATA_USE_16BIT ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int ata_attach (int ) ;
 int ata_default_registers (int ) ;
 int ata_generic_hw (int ) ;
 struct resource* bus_alloc_resource_anywhere (int ,int ,int*,int ,int ) ;
 scalar_t__ bus_get_resource (int ,int ,int,int *,int *) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,scalar_t__,int ) ;
 struct ata_channel* device_get_softc (int ) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static int
ata_isa_attach(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    struct resource *io = ((void*)0), *ctlio = ((void*)0);
    rman_res_t tmp;
    int i, rid;

    if (ch->attached)
 return (0);
    ch->attached = 1;


    rid = ATA_IOADDR_RID;
    if (!(io = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &rid,
        ATA_IOSIZE, RF_ACTIVE)))
 return ENXIO;


    if (bus_get_resource(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID, &tmp, &tmp)) {
 bus_set_resource(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID,
    rman_get_start(io) + ATA_CTLOFFSET, ATA_CTLIOSIZE);
    }


    rid = ATA_CTLADDR_RID;
    if (!(ctlio = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &rid,
           ATA_CTLIOSIZE, RF_ACTIVE))) {
 bus_release_resource(dev, SYS_RES_IOPORT, ATA_IOADDR_RID, io);
 return ENXIO;
    }


    for (i = ATA_DATA; i <= ATA_COMMAND; i++) {
 ch->r_io[i].res = io;
 ch->r_io[i].offset = i;
    }
    ch->r_io[ATA_CONTROL].res = ctlio;
    ch->r_io[ATA_CONTROL].offset = 0;
    ch->r_io[ATA_IDX_ADDR].res = io;
    ata_default_registers(dev);


    ch->unit = 0;
    ch->flags |= ATA_USE_16BIT;
    ata_generic_hw(dev);
    return ata_attach(dev);
}

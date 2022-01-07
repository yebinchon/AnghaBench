
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct resource {int dummy; } ;
struct ata_channel {int attached; int flags; scalar_t__ unit; TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_2__ {int offset; struct resource* res; } ;


 int ATA_COMMAND ;
 size_t ATA_CONTROL ;
 int ATA_CTLADDR_RID ;
 scalar_t__ ATA_CTLIOSIZE ;
 int ATA_DATA ;
 size_t ATA_IDX_ADDR ;
 int ATA_IOADDR_RID ;
 scalar_t__ ATA_IOSIZE ;
 int ATA_MAX_RES ;
 int ATA_NO_SLAVE ;
 int ATA_USE_16BIT ;
 int ENXIO ;
 int PFD_I_D ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int ata_attach (int ) ;
 int ata_default_registers (int ) ;
 int ata_generic_hw (int ) ;
 int ata_probe (int ) ;
 struct resource* bus_alloc_resource_anywhere (int ,int ,int*,scalar_t__,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 struct ata_channel* device_get_softc (int ) ;
 int pccard_get_funce_disk (int ,int*) ;
 scalar_t__ rman_get_size (struct resource*) ;

__attribute__((used)) static int
ata_pccard_attach(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    struct resource *io, *ctlio;
    int i, rid, err;
    uint16_t funce;

    if (ch->attached)
 return (0);
    ch->attached = 1;


    rid = ATA_IOADDR_RID;
    if (!(io = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &rid,
        ATA_IOSIZE, RF_ACTIVE)))
 return (ENXIO);


    for (i = ATA_DATA; i <= ATA_COMMAND; i++) {
 ch->r_io[i].res = io;
 ch->r_io[i].offset = i;
    }
    ch->r_io[ATA_IDX_ADDR].res = io;





    if (rman_get_size(io) > ATA_IOSIZE) {
 ch->r_io[ATA_CONTROL].res = io;
 ch->r_io[ATA_CONTROL].offset = 14;
    }
    else {
 rid = ATA_CTLADDR_RID;
 if (!(ctlio = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &rid,
        ATA_CTLIOSIZE, RF_ACTIVE))) {
     bus_release_resource(dev, SYS_RES_IOPORT, ATA_IOADDR_RID, io);
     for (i = ATA_DATA; i < ATA_MAX_RES; i++)
  ch->r_io[i].res = ((void*)0);
     return (ENXIO);
 }
 ch->r_io[ATA_CONTROL].res = ctlio;
 ch->r_io[ATA_CONTROL].offset = 0;
    }
    ata_default_registers(dev);


    ch->unit = 0;
    ch->flags |= ATA_USE_16BIT;
    funce = 0;
    pccard_get_funce_disk(dev, &funce);
    if (!(funce & PFD_I_D))
        ch-> flags |= ATA_NO_SLAVE;
    ata_generic_hw(dev);
    err = ata_probe(dev);
    if (err > 0)
 return (err);
    return (ata_attach(dev));
}

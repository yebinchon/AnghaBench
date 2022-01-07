
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int ATA_CTLADDR_RID ;
 int ATA_CTLIOSIZE ;
 scalar_t__ ATA_CTLOFFSET ;
 int ATA_IOADDR_RID ;
 int ATA_IOSIZE ;
 scalar_t__ ENXIO ;
 scalar_t__ ISA_PNP_PROBE (int ,int ,int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int ata_ids ;
 int ata_probe (int ) ;
 struct resource* bus_alloc_resource_anywhere (int ,int ,int*,int ,int ) ;
 scalar_t__ bus_get_resource (int ,int ,int,int *,int *) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,scalar_t__,int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static int
ata_isa_probe(device_t dev)
{
    struct resource *io = ((void*)0), *ctlio = ((void*)0);
    rman_res_t tmp;
    int rid;


    if (ISA_PNP_PROBE(device_get_parent(dev), dev, ata_ids) == ENXIO)
 return ENXIO;


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


    bus_release_resource(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID, ctlio);
    bus_release_resource(dev, SYS_RES_IOPORT, ATA_IOADDR_RID, io);

    device_set_desc(dev, "ATA channel");
    return (ata_probe(dev));
}

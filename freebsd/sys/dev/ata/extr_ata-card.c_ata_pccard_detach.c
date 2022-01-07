
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_channel {TYPE_1__* r_io; scalar_t__ attached; } ;
typedef int device_t ;
struct TYPE_2__ {int * res; } ;


 size_t ATA_CONTROL ;
 int ATA_CTLADDR_RID ;
 size_t ATA_DATA ;
 int ATA_IOADDR_RID ;
 int ATA_MAX_RES ;
 int SYS_RES_IOPORT ;
 int ata_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_pccard_detach(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    int i;

    if (!ch->attached)
 return (0);
    ch->attached = 0;

    ata_detach(dev);
    if (ch->r_io[ATA_CONTROL].res != ch->r_io[ATA_DATA].res)
 bus_release_resource(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID,
        ch->r_io[ATA_CONTROL].res);
    bus_release_resource(dev, SYS_RES_IOPORT, ATA_IOADDR_RID,
    ch->r_io[ATA_DATA].res);
    for (i = ATA_DATA; i < ATA_MAX_RES; i++)
 ch->r_io[i].res = ((void*)0);
    return 0;
}

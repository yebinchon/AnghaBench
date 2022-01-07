
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_iosize; int setprd; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int ata_dmainit (int ) ;
 int ata_promise_mio_setprd ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ata_promise_mio_dmainit(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);


    ch->dma.setprd = ata_promise_mio_setprd;
    ch->dma.max_iosize = 65536;
    ata_dmainit(dev);
}

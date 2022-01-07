
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dmatag; int * work_tag; int * work; scalar_t__ work_bus; int work_map; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 struct ata_channel* device_get_softc (int ) ;

void
ata_dmafini(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    if (ch->dma.work_bus) {
 bus_dmamap_unload(ch->dma.work_tag, ch->dma.work_map);
 bus_dmamem_free(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
 ch->dma.work_bus = 0;
 ch->dma.work = ((void*)0);
    }
    if (ch->dma.work_tag) {
 bus_dma_tag_destroy(ch->dma.work_tag);
 ch->dma.work_tag = ((void*)0);
    }
    if (ch->dma.dmatag) {
 bus_dma_tag_destroy(ch->dma.dmatag);
 ch->dma.dmatag = ((void*)0);
    }
}

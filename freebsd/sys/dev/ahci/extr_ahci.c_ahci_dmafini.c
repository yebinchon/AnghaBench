
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * work_tag; int * work; scalar_t__ work_bus; int work_map; int * rfis; scalar_t__ rfis_bus; int rfis_map; int * rfis_tag; int * data_tag; } ;
struct ahci_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 struct ahci_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ahci_dmafini(device_t dev)
{
 struct ahci_channel *ch = device_get_softc(dev);

 if (ch->dma.data_tag) {
  bus_dma_tag_destroy(ch->dma.data_tag);
  ch->dma.data_tag = ((void*)0);
 }
 if (ch->dma.rfis_bus) {
  bus_dmamap_unload(ch->dma.rfis_tag, ch->dma.rfis_map);
  bus_dmamem_free(ch->dma.rfis_tag, ch->dma.rfis, ch->dma.rfis_map);
  ch->dma.rfis_bus = 0;
  ch->dma.rfis = ((void*)0);
 }
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
}

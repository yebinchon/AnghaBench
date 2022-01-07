
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * workrq_tag; int * workrq; scalar_t__ workrq_bus; int workrq_map; int * workrp_tag; int * workrp; scalar_t__ workrp_bus; int workrp_map; int * data_tag; } ;
struct mvs_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 struct mvs_channel* device_get_softc (int ) ;

__attribute__((used)) static void
mvs_dmafini(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);

 if (ch->dma.data_tag) {
  bus_dma_tag_destroy(ch->dma.data_tag);
  ch->dma.data_tag = ((void*)0);
 }
 if (ch->dma.workrp_bus) {
  bus_dmamap_unload(ch->dma.workrp_tag, ch->dma.workrp_map);
  bus_dmamem_free(ch->dma.workrp_tag,
      ch->dma.workrp, ch->dma.workrp_map);
  ch->dma.workrp_bus = 0;
  ch->dma.workrp = ((void*)0);
 }
 if (ch->dma.workrp_tag) {
  bus_dma_tag_destroy(ch->dma.workrp_tag);
  ch->dma.workrp_tag = ((void*)0);
 }
 if (ch->dma.workrq_bus) {
  bus_dmamap_unload(ch->dma.workrq_tag, ch->dma.workrq_map);
  bus_dmamem_free(ch->dma.workrq_tag,
      ch->dma.workrq, ch->dma.workrq_map);
  ch->dma.workrq_bus = 0;
  ch->dma.workrq = ((void*)0);
 }
 if (ch->dma.workrq_tag) {
  bus_dma_tag_destroy(ch->dma.workrq_tag);
  ch->dma.workrq_tag = ((void*)0);
 }
}

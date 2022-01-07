
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ paddr; int * tag; int * ptr; int map; } ;
typedef int POCE_SOFTC ;
typedef TYPE_1__* POCE_DMA_MEM ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

void
oce_dma_free(POCE_SOFTC sc, POCE_DMA_MEM dma)
{
 if (dma->tag == ((void*)0))
  return;

 if (dma->paddr != 0) {
  bus_dmamap_sync(dma->tag, dma->map,
    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(dma->tag, dma->map);
  dma->paddr = 0;
 }

 if (dma->ptr != ((void*)0)) {
  bus_dmamem_free(dma->tag, dma->ptr, dma->map);
  dma->ptr = ((void*)0);
 }

 bus_dma_tag_destroy(dma->tag);
 dma->tag = ((void*)0);

 return;
}

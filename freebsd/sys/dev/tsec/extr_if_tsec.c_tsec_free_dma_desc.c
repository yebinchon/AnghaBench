
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,void*,int ) ;

__attribute__((used)) static void
tsec_free_dma_desc(bus_dma_tag_t dtag, bus_dmamap_t dmap, void *vaddr)
{

 if (vaddr == ((void*)0))
  return;


 bus_dmamap_sync(dtag, dmap, BUS_DMASYNC_POSTREAD |
     BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(dtag, dmap);


 bus_dmamem_free(dtag, vaddr, dmap);


 bus_dma_tag_destroy(dtag);
}

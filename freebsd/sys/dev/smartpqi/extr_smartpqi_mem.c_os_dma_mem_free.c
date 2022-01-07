
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_mem {int * dma_tag; int * virt_addr; int dma_map; scalar_t__ dma_addr; } ;
typedef int pqisrc_softstate_t ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

void os_dma_mem_free(pqisrc_softstate_t *softs, struct dma_mem *dma_mem)
{


 if(dma_mem->dma_addr) {
  bus_dmamap_unload(dma_mem->dma_tag, dma_mem->dma_map);
  dma_mem->dma_addr = 0;
 }

 if(dma_mem->virt_addr) {
  bus_dmamem_free(dma_mem->dma_tag, dma_mem->virt_addr,
     dma_mem->dma_map);
  dma_mem->virt_addr = ((void*)0);
 }

 if(dma_mem->dma_tag) {
  bus_dma_tag_destroy(dma_mem->dma_tag);
  dma_mem->dma_tag = ((void*)0);
 }


}

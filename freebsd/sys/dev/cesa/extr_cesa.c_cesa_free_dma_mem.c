
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_dma_mem {int * cdm_vaddr; int cdm_tag; int cdm_map; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;

__attribute__((used)) static void
cesa_free_dma_mem(struct cesa_dma_mem *cdm)
{

 bus_dmamap_unload(cdm->cdm_tag, cdm->cdm_map);
 bus_dmamem_free(cdm->cdm_tag, cdm->cdm_vaddr, cdm->cdm_map);
 bus_dma_tag_destroy(cdm->cdm_tag);
 cdm->cdm_vaddr = ((void*)0);
}

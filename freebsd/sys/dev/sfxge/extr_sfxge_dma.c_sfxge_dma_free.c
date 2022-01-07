
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ esm_size; int * esm_base; scalar_t__ esm_addr; int esm_tag; int esm_map; } ;
typedef TYPE_1__ efsys_mem_t ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;

void
sfxge_dma_free(efsys_mem_t *esmp)
{

 bus_dmamap_unload(esmp->esm_tag, esmp->esm_map);
 bus_dmamem_free(esmp->esm_tag, esmp->esm_base, esmp->esm_map);
 bus_dma_tag_destroy(esmp->esm_tag);

 esmp->esm_addr = 0;
 esmp->esm_base = ((void*)0);
 esmp->esm_size = 0;
}

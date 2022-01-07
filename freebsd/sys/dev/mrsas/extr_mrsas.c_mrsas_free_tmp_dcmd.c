
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_tmp_dcmd {int * tmp_dcmd_tag; int tmp_dcmd_dmamap; int * tmp_dcmd_mem; scalar_t__ tmp_dcmd_phys_addr; } ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

void
mrsas_free_tmp_dcmd(struct mrsas_tmp_dcmd *tmp)
{
 if (tmp->tmp_dcmd_phys_addr)
  bus_dmamap_unload(tmp->tmp_dcmd_tag, tmp->tmp_dcmd_dmamap);
 if (tmp->tmp_dcmd_mem != ((void*)0))
  bus_dmamem_free(tmp->tmp_dcmd_tag, tmp->tmp_dcmd_mem, tmp->tmp_dcmd_dmamap);
 if (tmp->tmp_dcmd_tag != ((void*)0))
  bus_dma_tag_destroy(tmp->tmp_dcmd_tag);
}

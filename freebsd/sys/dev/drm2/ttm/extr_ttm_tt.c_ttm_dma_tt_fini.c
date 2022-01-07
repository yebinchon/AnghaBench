
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int * pages; } ;
struct ttm_dma_tt {int * dma_address; struct ttm_tt ttm; } ;


 int M_TTM_PD ;
 int free (int *,int ) ;

void ttm_dma_tt_fini(struct ttm_dma_tt *ttm_dma)
{
 struct ttm_tt *ttm = &ttm_dma->ttm;

 free(ttm->pages, M_TTM_PD);
 ttm->pages = ((void*)0);
 free(ttm_dma->dma_address, M_TTM_PD);
 ttm_dma->dma_address = ((void*)0);
}

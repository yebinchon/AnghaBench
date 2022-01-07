
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int * pages; } ;


 int M_TTM_PD ;
 int free (int *,int ) ;

void ttm_tt_fini(struct ttm_tt *ttm)
{
 free(ttm->pages, M_TTM_PD);
 ttm->pages = ((void*)0);
}

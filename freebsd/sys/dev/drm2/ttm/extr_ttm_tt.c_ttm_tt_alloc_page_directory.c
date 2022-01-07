
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int num_pages; int pages; } ;


 int M_TTM_PD ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;

__attribute__((used)) static void ttm_tt_alloc_page_directory(struct ttm_tt *ttm)
{
 ttm->pages = malloc(ttm->num_pages * sizeof(void *),
     M_TTM_PD, M_WAITOK | M_ZERO);
}

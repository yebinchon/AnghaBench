
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {unsigned int num_pages; int state; int caching_state; int page_flags; scalar_t__* pages; TYPE_1__* glob; } ;
struct TYPE_2__ {int mem_glob; } ;


 int tt_unpopulated ;
 int ttm_mem_global_free_page (int ,scalar_t__) ;
 int ttm_put_pages (scalar_t__*,int,int ,int ) ;

void ttm_pool_unpopulate(struct ttm_tt *ttm)
{
 unsigned i;

 for (i = 0; i < ttm->num_pages; ++i) {
  if (ttm->pages[i]) {
   ttm_mem_global_free_page(ttm->glob->mem_glob,
       ttm->pages[i]);
   ttm_put_pages(&ttm->pages[i], 1,
          ttm->page_flags,
          ttm->caching_state);
  }
 }
 ttm->state = tt_unpopulated;
}

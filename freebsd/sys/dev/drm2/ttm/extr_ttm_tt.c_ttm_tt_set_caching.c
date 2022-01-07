
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
struct ttm_tt {int caching_state; scalar_t__ state; int num_pages; int ** pages; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 int drm_clflush_pages (int **,int) ;
 scalar_t__ likely (int ) ;
 int tt_cached ;
 scalar_t__ tt_unpopulated ;
 int ttm_tt_set_page_caching (int *,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_tt_set_caching(struct ttm_tt *ttm,
         enum ttm_caching_state c_state)
{
 int i, j;
 vm_page_t cur_page;
 int ret;

 if (ttm->caching_state == c_state)
  return 0;

 if (ttm->state == tt_unpopulated) {

  ttm->caching_state = c_state;
  return 0;
 }

 if (ttm->caching_state == tt_cached)
  drm_clflush_pages(ttm->pages, ttm->num_pages);

 for (i = 0; i < ttm->num_pages; ++i) {
  cur_page = ttm->pages[i];
  if (likely(cur_page != ((void*)0))) {
   ret = ttm_tt_set_page_caching(cur_page,
            ttm->caching_state,
            c_state);
   if (unlikely(ret != 0))
    goto out_err;
  }
 }

 ttm->caching_state = c_state;

 return 0;

out_err:
 for (j = 0; j < i; ++j) {
  cur_page = ttm->pages[j];
  if (cur_page != ((void*)0)) {
   (void)ttm_tt_set_page_caching(cur_page, c_state,
            ttm->caching_state);
  }
 }

 return ret;
}

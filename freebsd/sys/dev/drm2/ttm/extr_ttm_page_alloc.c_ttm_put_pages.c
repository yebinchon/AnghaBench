
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * vm_page_t ;
struct ttm_page_pool {scalar_t__ npages; int lock; int list; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_4__ {scalar_t__ max_size; } ;
struct TYPE_6__ {TYPE_1__ options; } ;
struct TYPE_5__ {int q; } ;


 unsigned int NUM_PAGES_TO_ALLOC ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 TYPE_3__* _manager ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_2__ plinks ;
 struct ttm_page_pool* ttm_get_pool (int,int) ;
 int ttm_page_pool_free (struct ttm_page_pool*,unsigned int) ;
 int ttm_vm_page_free (int *) ;

__attribute__((used)) static void ttm_put_pages(vm_page_t *pages, unsigned npages, int flags,
     enum ttm_caching_state cstate)
{
 struct ttm_page_pool *pool = ttm_get_pool(flags, cstate);
 unsigned i;

 if (pool == ((void*)0)) {

  for (i = 0; i < npages; i++) {
   if (pages[i]) {
    ttm_vm_page_free(pages[i]);
    pages[i] = ((void*)0);
   }
  }
  return;
 }

 mtx_lock(&pool->lock);
 for (i = 0; i < npages; i++) {
  if (pages[i]) {
   TAILQ_INSERT_TAIL(&pool->list, pages[i], plinks.q);
   pages[i] = ((void*)0);
   pool->npages++;
  }
 }

 npages = 0;
 if (pool->npages > _manager->options.max_size) {
  npages = pool->npages - _manager->options.max_size;


  if (npages < NUM_PAGES_TO_ALLOC)
   npages = NUM_PAGES_TO_ALLOC;
 }
 mtx_unlock(&pool->lock);
 if (npages)
  ttm_page_pool_free(pool, npages);
}

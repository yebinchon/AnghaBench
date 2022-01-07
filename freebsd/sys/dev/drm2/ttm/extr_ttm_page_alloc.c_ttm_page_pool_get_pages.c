
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
struct ttm_page_pool {unsigned int npages; int lock; int list; } ;
struct pglist {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_2__ {int q; } ;


 int TAILQ_CONCAT (struct pglist*,int *,int ) ;
 int TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (struct pglist*,int ,int ) ;
 int TAILQ_REMOVE (int *,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__ plinks ;
 int ttm_page_pool_fill_locked (struct ttm_page_pool*,int,int,unsigned int) ;

__attribute__((used)) static unsigned ttm_page_pool_get_pages(struct ttm_page_pool *pool,
     struct pglist *pages,
     int ttm_flags,
     enum ttm_caching_state cstate,
     unsigned count)
{
 vm_page_t p;
 unsigned i;

 mtx_lock(&pool->lock);
 ttm_page_pool_fill_locked(pool, ttm_flags, cstate, count);

 if (count >= pool->npages) {

  TAILQ_CONCAT(pages, &pool->list, plinks.q);
  count -= pool->npages;
  pool->npages = 0;
  goto out;
 }
 for (i = 0; i < count; i++) {
  p = TAILQ_FIRST(&pool->list);
  TAILQ_REMOVE(&pool->list, p, plinks.q);
  TAILQ_INSERT_TAIL(pages, p, plinks.q);
 }
 pool->npages -= count;
 count = 0;
out:
 mtx_unlock(&pool->lock);
 return count;
}

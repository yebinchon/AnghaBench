
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct list_head {int dummy; } ;
struct dma_pool {int dev_name; int name; } ;
struct dma_page {int page_list; struct page* p; } ;
struct TYPE_2__ {int pid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PageHighMem (struct page*) ;
 struct dma_page* __ttm_dma_alloc_page (struct dma_pool*) ;
 TYPE_1__* current ;
 int kfree (struct page**) ;
 struct page** kmalloc (unsigned int,int ) ;
 int list_add (int *,struct list_head*) ;
 unsigned int min (unsigned int,unsigned int) ;
 int pr_debug (char*,int ,int ,int ,unsigned int) ;
 int pr_err (char*,int ,...) ;
 int ttm_dma_handle_caching_state_failure (struct dma_pool*,struct list_head*,struct page**,unsigned int) ;
 int ttm_set_pages_caching (struct dma_pool*,struct page**,unsigned int) ;

__attribute__((used)) static int ttm_dma_pool_alloc_new_pages(struct dma_pool *pool,
     struct list_head *d_pages,
     unsigned count)
{
 struct page **caching_array;
 struct dma_page *dma_p;
 struct page *p;
 int r = 0;
 unsigned i, cpages;
 unsigned max_cpages = min(count,
   (unsigned)(PAGE_SIZE/sizeof(struct page *)));


 caching_array = kmalloc(max_cpages*sizeof(struct page *), GFP_KERNEL);

 if (!caching_array) {
  pr_err("%s: Unable to allocate table for new pages\n",
         pool->dev_name);
  return -ENOMEM;
 }

 if (count > 1) {
  pr_debug("%s: (%s:%d) Getting %d pages\n",
    pool->dev_name, pool->name, current->pid, count);
 }

 for (i = 0, cpages = 0; i < count; ++i) {
  dma_p = __ttm_dma_alloc_page(pool);
  if (!dma_p) {
   pr_err("%s: Unable to get page %u\n",
          pool->dev_name, i);



   if (cpages) {
    r = ttm_set_pages_caching(pool, caching_array,
         cpages);
    if (r)
     ttm_dma_handle_caching_state_failure(
      pool, d_pages, caching_array,
      cpages);
   }
   r = -ENOMEM;
   goto out;
  }
  p = dma_p->p;






  {
   caching_array[cpages++] = p;
   if (cpages == max_cpages) {

    r = ttm_set_pages_caching(pool, caching_array,
       cpages);
    if (r) {
     ttm_dma_handle_caching_state_failure(
      pool, d_pages, caching_array,
      cpages);
     goto out;
    }
    cpages = 0;
   }
  }
  list_add(&dma_p->page_list, d_pages);
 }

 if (cpages) {
  r = ttm_set_pages_caching(pool, caching_array, cpages);
  if (r)
   ttm_dma_handle_caching_state_failure(pool, d_pages,
     caching_array, cpages);
 }
out:
 kfree(caching_array);
 return r;
}

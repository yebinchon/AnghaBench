
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int nfrees; int npages_free; } ;



__attribute__((used)) static void ttm_pool_update_free_locked(struct dma_pool *pool,
     unsigned freed_pages)
{
 pool->npages_free -= freed_pages;
 pool->nfrees += freed_pages;

}

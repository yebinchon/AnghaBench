
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int size; int dev; } ;
struct dma_page {int vaddr; int dma; } ;
typedef int dma_addr_t ;


 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (struct dma_page*) ;

__attribute__((used)) static void __ttm_dma_free_page(struct dma_pool *pool, struct dma_page *d_page)
{
 dma_addr_t dma = d_page->dma;
 dma_free_coherent(pool->dev, pool->size, d_page->vaddr, dma);

 kfree(d_page);
 d_page = ((void*)0);
}

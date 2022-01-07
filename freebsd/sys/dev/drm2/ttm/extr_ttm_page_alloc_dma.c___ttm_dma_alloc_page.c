
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int gfp_flags; int size; int dev; } ;
struct dma_page {scalar_t__ vaddr; int p; int dma; } ;


 int GFP_KERNEL ;
 scalar_t__ dma_alloc_coherent (int ,int ,int *,int ) ;
 int kfree (struct dma_page*) ;
 struct dma_page* kmalloc (int,int ) ;
 int virt_to_page (scalar_t__) ;

__attribute__((used)) static struct dma_page *__ttm_dma_alloc_page(struct dma_pool *pool)
{
 struct dma_page *d_page;

 d_page = kmalloc(sizeof(struct dma_page), GFP_KERNEL);
 if (!d_page)
  return ((void*)0);

 d_page->vaddr = dma_alloc_coherent(pool->dev, pool->size,
        &d_page->dma,
        pool->gfp_flags);
 if (d_page->vaddr)
  d_page->p = virt_to_page(d_page->vaddr);
 else {
  kfree(d_page);
  d_page = ((void*)0);
 }
 return d_page;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int uint32_t ;
struct ttm_tt {unsigned long num_pages; int pages; int * swap_storage; int state; int dummy_read_page; int page_flags; int caching_state; int glob; struct ttm_bo_device* bdev; } ;
struct ttm_dma_tt {int dma_address; int pages_list; struct ttm_tt ttm; } ;
struct ttm_bo_device {int glob; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int printf (char*) ;
 int tt_cached ;
 int tt_unpopulated ;
 int ttm_dma_tt_alloc_page_directory (struct ttm_dma_tt*) ;
 int ttm_tt_destroy (struct ttm_tt*) ;

int ttm_dma_tt_init(struct ttm_dma_tt *ttm_dma, struct ttm_bo_device *bdev,
  unsigned long size, uint32_t page_flags,
  vm_page_t dummy_read_page)
{
 struct ttm_tt *ttm = &ttm_dma->ttm;

 ttm->bdev = bdev;
 ttm->glob = bdev->glob;
 ttm->num_pages = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 ttm->caching_state = tt_cached;
 ttm->page_flags = page_flags;
 ttm->dummy_read_page = dummy_read_page;
 ttm->state = tt_unpopulated;
 ttm->swap_storage = ((void*)0);

 INIT_LIST_HEAD(&ttm_dma->pages_list);
 ttm_dma_tt_alloc_page_directory(ttm_dma);
 if (!ttm->pages || !ttm_dma->dma_address) {
  ttm_tt_destroy(ttm);
  printf("Failed allocating page table\n");
  return -ENOMEM;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ttm_mem_global {int dummy; } ;
struct TYPE_5__ {unsigned int max_size; int alloc_size; int small; } ;
struct TYPE_6__ {int kobj_ref; TYPE_1__ options; int uc_pool_dma32; int wc_pool_dma32; int uc_pool; int wc_pool; } ;


 int M_TTM_POOLMGR ;
 int M_WAITOK ;
 int M_ZERO ;
 int NUM_PAGES_TO_ALLOC ;
 int SMALL_ALLOCATION ;
 int TTM_PAGE_FLAG_DMA32 ;
 TYPE_2__* _manager ;
 TYPE_2__* malloc (int,int ,int) ;
 int printf (char*) ;
 int refcount_init (int *,int) ;
 int ttm_page_pool_init_locked (int *,int ,char*) ;
 int ttm_pool_mm_shrink_init (TYPE_2__*) ;

int ttm_page_alloc_init(struct ttm_mem_global *glob, unsigned max_pages)
{

 if (_manager != ((void*)0))
  printf("[TTM] manager != NULL\n");
 printf("[TTM] Initializing pool allocator\n");

 _manager = malloc(sizeof(*_manager), M_TTM_POOLMGR, M_WAITOK | M_ZERO);

 ttm_page_pool_init_locked(&_manager->wc_pool, 0, "wc");
 ttm_page_pool_init_locked(&_manager->uc_pool, 0, "uc");
 ttm_page_pool_init_locked(&_manager->wc_pool_dma32,
     TTM_PAGE_FLAG_DMA32, "wc dma");
 ttm_page_pool_init_locked(&_manager->uc_pool_dma32,
     TTM_PAGE_FLAG_DMA32, "uc dma");

 _manager->options.max_size = max_pages;
 _manager->options.small = SMALL_ALLOCATION;
 _manager->options.alloc_size = NUM_PAGES_TO_ALLOC;

 refcount_init(&_manager->kobj_ref, 1);
 ttm_pool_mm_shrink_init(_manager);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj_ref; int * pools; } ;


 int FREE_ALL_PAGES ;
 int NUM_POOLS ;
 TYPE_1__* _manager ;
 int printf (char*) ;
 scalar_t__ refcount_release (int *) ;
 int ttm_page_pool_free (int *,int ) ;
 int ttm_pool_kobj_release (TYPE_1__*) ;
 int ttm_pool_mm_shrink_fini (TYPE_1__*) ;

void ttm_page_alloc_fini(void)
{
 int i;

 printf("[TTM] Finalizing pool allocator\n");
 ttm_pool_mm_shrink_fini(_manager);

 for (i = 0; i < NUM_POOLS; ++i)
  ttm_page_pool_free(&_manager->pools[i], FREE_ALL_PAGES);

 if (refcount_release(&_manager->kobj_ref))
  ttm_pool_kobj_release(_manager);
 _manager = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seeks; int * shrink; } ;
struct ttm_pool_manager {TYPE_1__ mm_shrink; } ;


 int register_shrinker (TYPE_1__*) ;
 int ttm_dma_pool_mm_shrink ;

__attribute__((used)) static void ttm_dma_pool_mm_shrink_init(struct ttm_pool_manager *manager)
{
 manager->mm_shrink.shrink = &ttm_dma_pool_mm_shrink;
 manager->mm_shrink.seeks = 1;
 register_shrinker(&manager->mm_shrink);
}

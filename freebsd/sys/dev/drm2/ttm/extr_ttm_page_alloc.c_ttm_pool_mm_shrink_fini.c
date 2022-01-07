
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_pool_manager {int lowmem_handler; } ;


 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int vm_lowmem ;

__attribute__((used)) static void ttm_pool_mm_shrink_fini(struct ttm_pool_manager *manager)
{

 EVENTHANDLER_DEREGISTER(vm_lowmem, manager->lowmem_handler);
}

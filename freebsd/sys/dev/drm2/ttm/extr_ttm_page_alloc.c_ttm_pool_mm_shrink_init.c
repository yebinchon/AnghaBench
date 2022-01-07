
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_pool_manager {int lowmem_handler; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,struct ttm_pool_manager*,int ) ;
 int ttm_pool_mm_shrink ;
 int vm_lowmem ;

__attribute__((used)) static void ttm_pool_mm_shrink_init(struct ttm_pool_manager *manager)
{

 manager->lowmem_handler = EVENTHANDLER_REGISTER(vm_lowmem,
     ttm_pool_mm_shrink, manager, EVENTHANDLER_PRI_ANY);
}

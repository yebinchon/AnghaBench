
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int io_reserve_mutex; int io_reserve_fastpath; } ;


 scalar_t__ likely (int ) ;
 int sx_xunlock (int *) ;

void ttm_mem_io_unlock(struct ttm_mem_type_manager *man)
{
 if (likely(man->io_reserve_fastpath))
  return;

 sx_xunlock(&man->io_reserve_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int io_reserve_mutex; int io_reserve_fastpath; } ;


 int EINTR ;
 scalar_t__ likely (int ) ;
 int sx_xlock (int *) ;
 scalar_t__ sx_xlock_sig (int *) ;

int ttm_mem_io_lock(struct ttm_mem_type_manager *man, bool interruptible)
{
 if (likely(man->io_reserve_fastpath))
  return 0;

 if (interruptible) {
  if (sx_xlock_sig(&man->io_reserve_mutex))
   return (-EINTR);
  else
   return (0);
 }

 sx_xlock(&man->io_reserve_mutex);
 return 0;
}

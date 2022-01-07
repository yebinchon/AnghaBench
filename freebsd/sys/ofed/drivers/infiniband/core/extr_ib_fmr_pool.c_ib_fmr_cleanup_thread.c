
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_fmr_pool {int req_ser; int flush_ser; int flush_arg; int (* flush_function ) (struct ib_fmr_pool*,int ) ;int force_wait; } ;


 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int ib_fmr_batch_release (struct ib_fmr_pool*) ;
 int kthread_should_stop () ;
 int schedule () ;
 int set_current_state (int ) ;
 int stub1 (struct ib_fmr_pool*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int ib_fmr_cleanup_thread(void *pool_ptr)
{
 struct ib_fmr_pool *pool = pool_ptr;

 do {
  if (atomic_read(&pool->flush_ser) - atomic_read(&pool->req_ser) < 0) {
   ib_fmr_batch_release(pool);

   atomic_inc(&pool->flush_ser);
   wake_up_interruptible(&pool->force_wait);

   if (pool->flush_function)
    pool->flush_function(pool, pool->flush_arg);
  }

  set_current_state(TASK_INTERRUPTIBLE);
  if (atomic_read(&pool->flush_ser) - atomic_read(&pool->req_ser) >= 0 &&
      !kthread_should_stop())
   schedule();
  __set_current_state(TASK_RUNNING);
 } while (!kthread_should_stop());

 return 0;
}

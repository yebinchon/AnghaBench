
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout_run {int callout_waiting; int lock; int co_completed; int * co_array; int co_return_npa; } ;


 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int callout_active (int *) ;
 int callout_deactivate (int *) ;
 scalar_t__ callout_pending (int *) ;
 int critical_enter () ;
 int critical_exit () ;
 int curcpu ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
test_callout(void *arg)
{
 struct callout_run *rn;
 int cpu;

 critical_enter();
 cpu = curcpu;
 critical_exit();
 rn = (struct callout_run *)arg;
 atomic_add_int(&rn->callout_waiting, 1);
 mtx_lock(&rn->lock);
 if (callout_pending(&rn->co_array[cpu]) ||
     !callout_active(&rn->co_array[cpu])) {
  rn->co_return_npa++;
  atomic_subtract_int(&rn->callout_waiting, 1);
  mtx_unlock(&rn->lock);
  return;
 }
 callout_deactivate(&rn->co_array[cpu]);
 rn->co_completed++;
 mtx_unlock(&rn->lock);
 atomic_subtract_int(&rn->callout_waiting, 1);
}

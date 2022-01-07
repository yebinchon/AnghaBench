
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct callout_run {scalar_t__ callout_waiting; int co_number_callouts; int co_test; int index; scalar_t__ cnt_one; int lock; int cnt_zero; int * co_array; } ;


 int callout_async_drain (int *,int ) ;
 int callout_reset_sbt_on (int *,int,int ,int ,struct callout_run*,int,int ) ;
 int co_saydone (void*) ;
 int cpu_spinwait () ;
 int drainit ;
 int mp_ncpus ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int test_callout ;
 int ticks ;

void
execute_the_co_test(struct callout_run *rn)
{
 int i, ret, cpu;
 uint32_t tk_s, tk_e, tk_d;

 mtx_lock(&rn->lock);
 rn->callout_waiting = 0;
 for (i = 0; i < rn->co_number_callouts; i++) {
  if (rn->co_test == 1) {

   cpu = i % mp_ncpus;
   callout_reset_sbt_on(&rn->co_array[i], 3, 0, test_callout, rn,
       cpu, 0);
  } else {

   callout_reset_sbt_on(&rn->co_array[i], 3, 0, test_callout, rn,
       rn->index, 0);
  }
 }
 tk_s = ticks;
 while (rn->callout_waiting != rn->co_number_callouts) {
  cpu_spinwait();
  tk_e = ticks;
  tk_d = tk_e - tk_s;
  if (tk_d > 100) {
   break;
  }
 }

 for (i = 0; i < rn->co_number_callouts; i++) {
  ret = callout_async_drain(&rn->co_array[i], drainit);
  if (ret) {
   rn->cnt_one++;
  } else {
   rn->cnt_zero++;
  }
 }
 rn->callout_waiting -= rn->cnt_one;
 mtx_unlock(&rn->lock);

 tk_s = ticks;
 while (rn->callout_waiting > 0) {
  cpu_spinwait();
  tk_e = ticks;
  tk_d = tk_e - tk_s;
  if (tk_d > 100) {
   break;
  }
 }
 co_saydone((void *)rn);
}

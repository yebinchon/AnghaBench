
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct tdq {scalar_t__ tdq_load; int tdq_switchcnt; int tdq_oldswitchcnt; int tdq_cpu_idle; } ;


 int Giant ;
 int MA_NOTOWNED ;
 int SWT_IDLE ;
 int SW_VOL ;
 scalar_t__ TDQ_IDLESPIN (struct tdq*) ;
 struct tdq* TDQ_SELF () ;
 int THREAD_NO_SLEEPING () ;
 scalar_t__ always_steal ;
 int atomic_thread_fence_seq_cst () ;
 int cpu_idle (int) ;
 int cpu_spinwait () ;
 struct thread* curthread ;
 int mi_switch (int,int *) ;
 int mtx_assert (int *,int ) ;
 int sched_idlespins ;
 int sched_idlespinthresh ;
 scalar_t__ tdq_idled (struct tdq*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
sched_idletd(void *dummy)
{
 struct thread *td;
 struct tdq *tdq;
 int oldswitchcnt, switchcnt;
 int i;

 mtx_assert(&Giant, MA_NOTOWNED);
 td = curthread;
 tdq = TDQ_SELF();
 THREAD_NO_SLEEPING();
 oldswitchcnt = -1;
 for (;;) {
  if (tdq->tdq_load) {
   thread_lock(td);
   mi_switch(SW_VOL | SWT_IDLE, ((void*)0));
   thread_unlock(td);
  }
  switchcnt = tdq->tdq_switchcnt + tdq->tdq_oldswitchcnt;
  oldswitchcnt = switchcnt;
  if (TDQ_IDLESPIN(tdq) && switchcnt > sched_idlespinthresh) {
   for (i = 0; i < sched_idlespins; i++) {
    if (tdq->tdq_load)
     break;
    cpu_spinwait();
   }
  }


  switchcnt = tdq->tdq_switchcnt + tdq->tdq_oldswitchcnt;
  if (tdq->tdq_load != 0 || switchcnt != oldswitchcnt)
   continue;


  tdq->tdq_cpu_idle = 1;





  atomic_thread_fence_seq_cst();





  if (tdq->tdq_load != 0) {
   tdq->tdq_cpu_idle = 0;
   continue;
  }
  cpu_idle(switchcnt * 4 > sched_idlespinthresh);
  tdq->tdq_cpu_idle = 0;





  switchcnt = tdq->tdq_switchcnt + tdq->tdq_oldswitchcnt;
  if (switchcnt != oldswitchcnt)
   continue;
  tdq->tdq_switchcnt++;
  oldswitchcnt++;
 }
}

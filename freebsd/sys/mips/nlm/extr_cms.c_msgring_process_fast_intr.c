
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msgring_thread {int needed; struct thread* thread; } ;


 int FILTER_HANDLED ;
 unsigned long long IRQ_MSGRING ;
 int SRQ_INTR ;
 scalar_t__ TD_AWAITING_INTR (struct thread*) ;
 int TD_CLR_IWAIT (struct thread*) ;
 int * msgring_nintr ;
 struct msgring_thread* msgring_threads ;
 int * msgring_wakeup_nosleep ;
 int * msgring_wakeup_sleep ;
 int nlm_cpuid () ;
 int nlm_write_c0_eirr (unsigned long long) ;
 int sched_add (struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static int
msgring_process_fast_intr(void *arg)
{
 struct msgring_thread *mthd;
 struct thread *td;
 int cpu;

 cpu = nlm_cpuid();
 mthd = &msgring_threads[cpu];
 msgring_nintr[cpu]++;
 td = mthd->thread;


 nlm_write_c0_eirr(1ULL << IRQ_MSGRING);


 mthd->needed = 1;
 thread_lock(td);
 if (TD_AWAITING_INTR(td)) {
  msgring_wakeup_sleep[cpu]++;
  TD_CLR_IWAIT(td);
  sched_add(td, SRQ_INTR);
 } else
  msgring_wakeup_nosleep[cpu]++;

 thread_unlock(td);

 return (FILTER_HANDLED);
}

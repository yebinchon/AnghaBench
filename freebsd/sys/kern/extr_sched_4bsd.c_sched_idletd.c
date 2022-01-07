
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpuidlestat {int idlecalls; int oldidlecalls; } ;


 struct pcpuidlestat* DPCPU_PTR (int ) ;
 int Giant ;
 int MA_NOTOWNED ;
 int SWT_IDLE ;
 int SW_VOL ;
 int THREAD_NO_SLEEPING () ;
 int cpu_idle (int) ;
 int idlestat ;
 int mi_switch (int,int *) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int sched_lock ;
 scalar_t__ sched_runnable () ;

void
sched_idletd(void *dummy)
{
 struct pcpuidlestat *stat;

 THREAD_NO_SLEEPING();
 stat = DPCPU_PTR(idlestat);
 for (;;) {
  mtx_assert(&Giant, MA_NOTOWNED);

  while (sched_runnable() == 0) {
   cpu_idle(stat->idlecalls + stat->oldidlecalls > 64);
   stat->idlecalls++;
  }

  mtx_lock_spin(&sched_lock);
  mi_switch(SW_VOL | SWT_IDLE, ((void*)0));
  mtx_unlock_spin(&sched_lock);
 }
}

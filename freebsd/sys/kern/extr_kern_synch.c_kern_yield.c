
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_user_pri; } ;


 int DROP_GIANT () ;
 int PICKUP_GIANT () ;
 int PRI_USER ;
 int SWT_RELINQUISH ;
 int SW_VOL ;
 struct thread* curthread ;
 int mi_switch (int,int *) ;
 int sched_prio (struct thread*,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
kern_yield(int prio)
{
 struct thread *td;

 td = curthread;
 DROP_GIANT();
 thread_lock(td);
 if (prio == PRI_USER)
  prio = td->td_user_pri;
 if (prio >= 0)
  sched_prio(td, prio);
 mi_switch(SW_VOL | SWT_RELINQUISH, ((void*)0));
 thread_unlock(td);
 PICKUP_GIANT();
}

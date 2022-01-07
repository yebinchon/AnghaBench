
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yield_args {int dummy; } ;
struct thread {scalar_t__* td_retval; int td_pri_class; } ;


 scalar_t__ PRI_BASE (int ) ;
 int PRI_MAX_TIMESHARE ;
 scalar_t__ PRI_TIMESHARE ;
 int SWT_RELINQUISH ;
 int SW_VOL ;
 int mi_switch (int,int *) ;
 int sched_prio (struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
sys_yield(struct thread *td, struct yield_args *uap)
{

 thread_lock(td);
 if (PRI_BASE(td->td_pri_class) == PRI_TIMESHARE)
  sched_prio(td, PRI_MAX_TIMESHARE);
 mi_switch(SW_VOL | SWT_RELINQUISH, ((void*)0));
 thread_unlock(td);
 td->td_retval[0] = 0;
 return (0);
}

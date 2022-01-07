
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;


 int MPASS (int) ;
 int TDF_SINTR ;
 struct thread* curthread ;
 int sleepq_check_timeout () ;
 int sleepq_switch (void*,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
sleepq_timedwait(void *wchan, int pri)
{
 struct thread *td;
 int rval;

 td = curthread;
 MPASS(!(td->td_flags & TDF_SINTR));
 thread_lock(td);
 sleepq_switch(wchan, pri);
 rval = sleepq_check_timeout();
 thread_unlock(td);

 return (rval);
}

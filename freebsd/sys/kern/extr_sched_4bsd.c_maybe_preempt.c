
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_inhibitors; int td_priority; int td_owepreempt; } ;


 int CTR0 (int ,char*) ;
 int KASSERT (int,char*) ;
 int KTR_PROC ;
 int MA_OWNED ;
 int PRI_MAX_ITHD ;
 int PRI_MIN_IDLE ;
 scalar_t__ TD_IS_INHIBITED (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct thread* curthread ;
 int * panicstr ;

int
maybe_preempt(struct thread *td)
{
 return (0);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int TDF_BOUND ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct thread* curthread ;

void
sched_unbind(struct thread* td)
{
 THREAD_LOCK_ASSERT(td, MA_OWNED);
 KASSERT(td == curthread, ("sched_unbind: can only bind curthread"));
 td->td_flags &= ~TDF_BOUND;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;


 int MA_OWNED ;
 int TDF_BOUND ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;

int
sched_is_bound(struct thread *td)
{
 THREAD_LOCK_ASSERT(td, MA_OWNED);
 return (td->td_flags & TDF_BOUND);
}

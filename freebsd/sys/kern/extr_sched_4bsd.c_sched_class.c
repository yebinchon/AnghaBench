
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pri_class; } ;


 int MA_OWNED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;

void
sched_class(struct thread *td, int class)
{
 THREAD_LOCK_ASSERT(td, MA_OWNED);
 td->td_pri_class = class;
}

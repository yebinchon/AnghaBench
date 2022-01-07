
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {scalar_t__ td_priority; } ;
struct TYPE_2__ {scalar_t__ td_priority; int td_flags; } ;


 int MA_OWNED ;
 int TDF_NEEDRESCHED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 TYPE_1__* curthread ;

__attribute__((used)) static void
maybe_resched(struct thread *td)
{

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 if (td->td_priority < curthread->td_priority)
  curthread->td_flags |= TDF_NEEDRESCHED;
}

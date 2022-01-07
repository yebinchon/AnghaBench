
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int ts_flags; } ;


 int MA_OWNED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int TSF_BOUND ;
 TYPE_1__* td_get_sched (struct thread*) ;

int
sched_is_bound(struct thread *td)
{
 THREAD_LOCK_ASSERT(td, MA_OWNED);
 return (td_get_sched(td)->ts_flags & TSF_BOUND);
}

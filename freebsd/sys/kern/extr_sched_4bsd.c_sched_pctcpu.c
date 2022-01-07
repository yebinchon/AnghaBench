
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct td_sched {int ts_pctcpu; } ;
typedef int fixpt_t ;


 int MA_OWNED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct td_sched* td_get_sched (struct thread*) ;

fixpt_t
sched_pctcpu(struct thread *td)
{
 struct td_sched *ts;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 ts = td_get_sched(td);
 return (ts->ts_pctcpu);
}

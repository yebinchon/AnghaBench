
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct td_sched {int ts_runtime; int ts_slptime; } ;


 int SCHED_SLP_RUN_FORK ;
 struct td_sched* td_get_sched (struct thread*) ;

__attribute__((used)) static void
sched_interact_fork(struct thread *td)
{
 struct td_sched *ts;
 int ratio;
 int sum;

 ts = td_get_sched(td);
 sum = ts->ts_runtime + ts->ts_slptime;
 if (sum > SCHED_SLP_RUN_FORK) {
  ratio = sum / SCHED_SLP_RUN_FORK;
  ts->ts_runtime /= ratio;
  ts->ts_slptime /= ratio;
 }
}

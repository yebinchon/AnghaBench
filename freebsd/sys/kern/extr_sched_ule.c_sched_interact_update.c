
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
struct td_sched {int ts_runtime; int ts_slptime; } ;


 int SCHED_SLP_RUN_MAX ;
 struct td_sched* td_get_sched (struct thread*) ;

__attribute__((used)) static void
sched_interact_update(struct thread *td)
{
 struct td_sched *ts;
 u_int sum;

 ts = td_get_sched(td);
 sum = ts->ts_runtime + ts->ts_slptime;
 if (sum < SCHED_SLP_RUN_MAX)
  return;





 if (sum > SCHED_SLP_RUN_MAX * 2) {
  if (ts->ts_runtime > ts->ts_slptime) {
   ts->ts_runtime = SCHED_SLP_RUN_MAX;
   ts->ts_slptime = 1;
  } else {
   ts->ts_slptime = SCHED_SLP_RUN_MAX;
   ts->ts_runtime = 1;
  }
  return;
 }





 if (sum > (SCHED_SLP_RUN_MAX / 5) * 6) {
  ts->ts_runtime /= 2;
  ts->ts_slptime /= 2;
  return;
 }
 ts->ts_runtime = (ts->ts_runtime / 5) * 4;
 ts->ts_slptime = (ts->ts_slptime / 5) * 4;
}

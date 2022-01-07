
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct td_sched {int ts_runtime; int ts_slptime; } ;


 int SCHED_INTERACT_HALF ;
 int max (int,int) ;
 int sched_interact ;
 struct td_sched* td_get_sched (struct thread*) ;

__attribute__((used)) static int
sched_interact_score(struct thread *td)
{
 struct td_sched *ts;
 int div;

 ts = td_get_sched(td);





 if (sched_interact <= SCHED_INTERACT_HALF &&
  ts->ts_runtime >= ts->ts_slptime)
   return (SCHED_INTERACT_HALF);

 if (ts->ts_runtime > ts->ts_slptime) {
  div = max(1, ts->ts_runtime / SCHED_INTERACT_HALF);
  return (SCHED_INTERACT_HALF +
      (SCHED_INTERACT_HALF - (ts->ts_slptime / div)));
 }
 if (ts->ts_slptime > ts->ts_runtime) {
  div = max(1, ts->ts_slptime / SCHED_INTERACT_HALF);
  return (ts->ts_runtime / div);
 }

 if (ts->ts_runtime)
  return (SCHED_INTERACT_HALF);




 return (0);

}

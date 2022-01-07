
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct td_sched {int ts_ltick; int ts_ticks; int ts_ftick; } ;


 int SCHED_TICK_MAX ;
 int SCHED_TICK_SHIFT ;
 int SCHED_TICK_TARG ;
 int ticks ;

__attribute__((used)) static void
sched_pctcpu_update(struct td_sched *ts, int run)
{
 int t = ticks;





 if ((u_int)(t - ts->ts_ltick) >= SCHED_TICK_TARG) {
  ts->ts_ticks = 0;
  ts->ts_ftick = t - SCHED_TICK_TARG;
 } else if (t - ts->ts_ftick >= SCHED_TICK_MAX) {
  ts->ts_ticks = (ts->ts_ticks / (ts->ts_ltick - ts->ts_ftick)) *
      (ts->ts_ltick - (t - SCHED_TICK_TARG));
  ts->ts_ftick = t - SCHED_TICK_TARG;
 }
 if (run)
  ts->ts_ticks += (t - ts->ts_ltick) << SCHED_TICK_SHIFT;
 ts->ts_ltick = t;
}

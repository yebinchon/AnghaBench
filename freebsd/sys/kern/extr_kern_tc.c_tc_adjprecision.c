
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int frac; int sec; } ;


 int FREQ2BT (int,TYPE_1__*) ;
 int INT_MAX ;
 int bintime_shift (TYPE_1__*,int) ;
 TYPE_1__ bt_tickthreshold ;
 TYPE_1__ bt_timethreshold ;
 void* bttosbt (TYPE_1__) ;
 int fls (int) ;
 int hz ;
 void* sbt_tickthreshold ;
 void* sbt_timethreshold ;
 int tc_precexp ;
 int tc_tick ;
 int tc_timepercentage ;

__attribute__((used)) static void __inline
tc_adjprecision(void)
{
 int t;

 if (tc_timepercentage > 0) {
  t = (99 + tc_timepercentage) / tc_timepercentage;
  tc_precexp = fls(t + (t >> 1)) - 1;
  FREQ2BT(hz / tc_tick, &bt_timethreshold);
  FREQ2BT(hz, &bt_tickthreshold);
  bintime_shift(&bt_timethreshold, tc_precexp);
  bintime_shift(&bt_tickthreshold, tc_precexp);
 } else {
  tc_precexp = 31;
  bt_timethreshold.sec = INT_MAX;
  bt_timethreshold.frac = ~(uint64_t)0;
  bt_tickthreshold = bt_timethreshold;
 }
 sbt_timethreshold = bttosbt(bt_timethreshold);
 sbt_tickthreshold = bttosbt(bt_tickthreshold);
}

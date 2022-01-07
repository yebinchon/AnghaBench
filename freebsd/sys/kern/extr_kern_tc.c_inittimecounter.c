
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int (* tc_get_timecount ) (TYPE_1__*) ;} ;


 int FREQ2BT (int,int *) ;
 void* bttosbt (int ) ;
 int ffclock_init () ;
 int hz ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int printf (char*,int,int) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int tc_adjprecision () ;
 int tc_setclock_mtx ;
 int tc_tick ;
 int tc_tick_bt ;
 void* tc_tick_sbt ;
 int tc_windup (int *) ;
 int tick_bt ;
 void* tick_sbt ;
 TYPE_1__* timecounter ;

__attribute__((used)) static void
inittimecounter(void *dummy)
{
 u_int p;
 int tick_rate;
 if (hz > 1000)
  tc_tick = (hz + 500) / 1000;
 else
  tc_tick = 1;
 tc_adjprecision();
 FREQ2BT(hz, &tick_bt);
 tick_sbt = bttosbt(tick_bt);
 tick_rate = hz / tc_tick;
 FREQ2BT(tick_rate, &tc_tick_bt);
 tc_tick_sbt = bttosbt(tc_tick_bt);
 p = (tc_tick * 1000000) / hz;
 printf("Timecounters tick every %d.%03u msec\n", p / 1000, p % 1000);






 (void)timecounter->tc_get_timecount(timecounter);
 (void)timecounter->tc_get_timecount(timecounter);
 mtx_lock_spin(&tc_setclock_mtx);
 tc_windup(((void*)0));
 mtx_unlock_spin(&tc_setclock_mtx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct bintime {int dummy; } ;
typedef int intmax_t ;


 int LOG_INFO ;
 int atomic_add_rel_int (int *,int) ;
 int bintime_sub (struct bintime*,struct bintime*) ;
 int binuptime (struct bintime*) ;
 int cpu_tick_calibrate (int) ;
 int log (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int nanotime (struct timespec*) ;
 int rtc_generation ;
 int sleeping_on_old_rtc ;
 int sleepq_chains_remove_matching (int ) ;
 int tc_setclock_mtx ;
 int tc_windup (struct bintime*) ;
 int timespec2bintime (struct timespec*,struct bintime*) ;
 scalar_t__ timestepwarnings ;

void
tc_setclock(struct timespec *ts)
{
 struct timespec tbef, taft;
 struct bintime bt, bt2;

 timespec2bintime(ts, &bt);
 nanotime(&tbef);
 mtx_lock_spin(&tc_setclock_mtx);
 cpu_tick_calibrate(1);
 binuptime(&bt2);
 bintime_sub(&bt, &bt2);


 tc_windup(&bt);
 mtx_unlock_spin(&tc_setclock_mtx);


 atomic_add_rel_int(&rtc_generation, 2);
 sleepq_chains_remove_matching(sleeping_on_old_rtc);
 if (timestepwarnings) {
  nanotime(&taft);
  log(LOG_INFO,
      "Time stepped from %jd.%09ld to %jd.%09ld (%jd.%09ld)\n",
      (intmax_t)tbef.tv_sec, tbef.tv_nsec,
      (intmax_t)taft.tv_sec, taft.tv_nsec,
      (intmax_t)ts->tv_sec, ts->tv_nsec);
 }
}

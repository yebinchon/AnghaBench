
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCHED_AFFINITY_DEFAULT ;
 int SCHED_SLICE_DEFAULT_DIVISOR ;
 int SCHED_SLICE_MIN_DIVISOR ;
 int SCHED_TICK_SHIFT ;
 int affinity ;
 int balance_interval ;
 int balance_ticks ;
 int hogticks ;
 int hz ;
 int imax (int,int) ;
 int max (int,int) ;
 int realstathz ;
 int sched_idlespinthresh ;
 int sched_slice ;
 int sched_slice_min ;
 int stathz ;
 int tickincr ;

__attribute__((used)) static void
sched_initticks(void *dummy)
{
 int incr;

 realstathz = stathz ? stathz : hz;
 sched_slice = realstathz / SCHED_SLICE_DEFAULT_DIVISOR;
 sched_slice_min = sched_slice / SCHED_SLICE_MIN_DIVISOR;
 hogticks = imax(1, (2 * hz * sched_slice + realstathz / 2) /
     realstathz);





 incr = (hz << SCHED_TICK_SHIFT) / realstathz;




 if (incr == 0)
  incr = 1;
 tickincr = incr;
 if (sched_idlespinthresh < 0)
  sched_idlespinthresh = 2 * max(10000, 6 * hz) / realstathz;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct bintime {int dummy; } ;
struct timehands {scalar_t__ th_generation; int th_scale; struct bintime th_bintime; } ;


 scalar_t__ atomic_load_acq_int (scalar_t__*) ;
 int atomic_thread_fence_acq () ;
 int bintime_addx (struct bintime*,int) ;
 int tc_delta (struct timehands*) ;
 struct timehands* timehands ;

void
bintime(struct bintime *bt)
{
 struct timehands *th;
 u_int gen;

 do {
  th = timehands;
  gen = atomic_load_acq_int(&th->th_generation);
  *bt = th->th_bintime;
  bintime_addx(bt, th->th_scale * tc_delta(th));
  atomic_thread_fence_acq();
 } while (gen == 0 || gen != th->th_generation);
}

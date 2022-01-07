
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct timeval {int dummy; } ;
struct timehands {scalar_t__ th_generation; struct timeval th_microtime; } ;


 scalar_t__ atomic_load_acq_int (scalar_t__*) ;
 int atomic_thread_fence_acq () ;
 struct timehands* timehands ;

void
getmicrotime(struct timeval *tvp)
{
 struct timehands *th;
 u_int gen;

 do {
  th = timehands;
  gen = atomic_load_acq_int(&th->th_generation);
  *tvp = th->th_microtime;
  atomic_thread_fence_acq();
 } while (gen == 0 || gen != th->th_generation);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct timespec {int dummy; } ;
struct timehands {scalar_t__ th_generation; int th_offset; } ;


 scalar_t__ atomic_load_acq_int (scalar_t__*) ;
 int atomic_thread_fence_acq () ;
 int bintime2timespec (int *,struct timespec*) ;
 struct timehands* timehands ;

void
getnanouptime(struct timespec *tsp)
{
 struct timehands *th;
 u_int gen;

 do {
  th = timehands;
  gen = atomic_load_acq_int(&th->th_generation);
  bintime2timespec(&th->th_offset, tsp);
  atomic_thread_fence_acq();
 } while (gen == 0 || gen != th->th_generation);
}

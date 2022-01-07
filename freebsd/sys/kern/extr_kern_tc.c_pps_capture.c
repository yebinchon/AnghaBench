
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timehands {scalar_t__ th_generation; TYPE_1__* th_counter; } ;
struct pps_state {scalar_t__ capgen; int capcount; int capffth; struct timehands* capth; } ;
struct TYPE_2__ {int (* tc_get_timecount ) (TYPE_1__*) ;} ;


 int KASSERT (int ,char*) ;
 scalar_t__ atomic_load_acq_int (scalar_t__*) ;
 int atomic_thread_fence_acq () ;
 int fftimehands ;
 int stub1 (TYPE_1__*) ;
 struct timehands* timehands ;

void
pps_capture(struct pps_state *pps)
{
 struct timehands *th;

 KASSERT(pps != ((void*)0), ("NULL pps pointer in pps_capture"));
 th = timehands;
 pps->capgen = atomic_load_acq_int(&th->th_generation);
 pps->capth = th;



 pps->capcount = th->th_counter->tc_get_timecount(th->th_counter);
 atomic_thread_fence_acq();
 if (pps->capgen != th->th_generation)
  pps->capgen = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct timecounter {unsigned int (* tc_get_timecount ) (struct timecounter*) ;unsigned int tc_counter_mask; } ;
struct TYPE_2__ {struct timecounter* th_counter; } ;


 void* DPCPU_PTR (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 unsigned int stub1 (struct timecounter*) ;
 int tc_cpu_ticks_base ;
 int tc_cpu_ticks_last ;
 TYPE_1__* timehands ;

__attribute__((used)) static uint64_t
tc_cpu_ticks(void)
{
 struct timecounter *tc;
 uint64_t res, *base;
 unsigned u, *last;

 critical_enter();
 base = DPCPU_PTR(tc_cpu_ticks_base);
 last = DPCPU_PTR(tc_cpu_ticks_last);
 tc = timehands->th_counter;
 u = tc->tc_get_timecount(tc) & tc->tc_counter_mask;
 if (u < *last)
  *base += (uint64_t)tc->tc_counter_mask + 1;
 *last = u;
 res = u + *base;
 critical_exit();
 return (res);
}

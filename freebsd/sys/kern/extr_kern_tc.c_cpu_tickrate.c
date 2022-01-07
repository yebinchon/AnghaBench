
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cpu_tick_frequency ;
 scalar_t__ cpu_ticks ;
 scalar_t__ tc_cpu_ticks ;
 int tc_getfrequency () ;

uint64_t
cpu_tickrate(void)
{

 if (cpu_ticks == tc_cpu_ticks)
  return (tc_getfrequency());
 return (cpu_tick_frequency);
}

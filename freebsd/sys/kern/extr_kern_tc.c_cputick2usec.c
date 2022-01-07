
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;


 long long cpu_tickrate () ;

uint64_t
cputick2usec(uint64_t tick)
{

 if (tick > 18446744073709551LL)
  return (tick / (cpu_tickrate() / 1000000LL));
 else if (tick > 18446744073709LL)
  return ((tick * 1000LL) / (cpu_tickrate() / 1000LL));
 else
  return ((tick * 1000000LL) / cpu_tickrate());
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int cpu_tick_f ;


 int cpu_tick_frequency ;
 unsigned int cpu_tick_variable ;
 int * cpu_ticks ;
 int * tc_cpu_ticks ;

void
set_cputicker(cpu_tick_f *func, uint64_t freq, unsigned var)
{

 if (func == ((void*)0)) {
  cpu_ticks = tc_cpu_ticks;
 } else {
  cpu_tick_frequency = freq;
  cpu_tick_variable = var;
  cpu_ticks = func;
 }
}

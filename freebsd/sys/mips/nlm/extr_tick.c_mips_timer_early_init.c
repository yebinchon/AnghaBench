
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int counter_freq ;
 int cycles_per_usec ;

void
mips_timer_early_init(uint64_t clock_hz)
{

 counter_freq = clock_hz;
 cycles_per_usec = (clock_hz / (1000 * 1000));
}

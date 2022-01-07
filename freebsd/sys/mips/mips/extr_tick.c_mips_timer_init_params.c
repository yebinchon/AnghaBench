
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int counter_freq ;
 int cycles_per_usec ;
 int set_cputicker (int ,int,int) ;
 int tick_ticker ;

void
mips_timer_init_params(uint64_t platform_counter_freq, int double_count)
{





 counter_freq = platform_counter_freq;





 if (double_count != 0)
  counter_freq /= 2;

 cycles_per_usec = counter_freq / (1 * 1000 * 1000);
 set_cputicker(tick_ticker, counter_freq, 1);
}

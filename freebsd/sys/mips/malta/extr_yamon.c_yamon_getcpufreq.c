
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int freq ;


 int SYSCON_BOARD_CPU_CLOCK_FREQ_ID ;
 int YAMON_SYSCON_READ (int ,scalar_t__*,int) ;

uint32_t
yamon_getcpufreq(void)
{
 uint32_t freq;
 int ret;

 freq = 0;
 ret = YAMON_SYSCON_READ(SYSCON_BOARD_CPU_CLOCK_FREQ_ID, &freq,
     sizeof(freq));
 if (ret != 0)
  freq = 0;

 return (freq);
}

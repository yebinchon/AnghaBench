
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int dummy; } ;
typedef int buf ;


 int curcpu ;
 int * decr_counts ;
 int decr_et_stop (int *) ;
 int initialized ;
 int intrcnt_add (char*,int *) ;
 int mftb ;
 int platform_smp_first_cpu (struct cpuref*) ;
 scalar_t__ platform_smp_get_bsp (struct cpuref*) ;
 int platform_timebase_freq (struct cpuref*) ;
 int ps_per_tick ;
 int set_cputicker (int ,int,int ) ;
 int snprintf (char*,int,char*,int) ;
 int ticks_per_sec ;

void
decr_init(void)
{
 struct cpuref cpu;
 char buf[32];





 if (platform_smp_get_bsp(&cpu) != 0)
  platform_smp_first_cpu(&cpu);
 ticks_per_sec = platform_timebase_freq(&cpu);
 ps_per_tick = 1000000000000 / ticks_per_sec;

 set_cputicker(mftb, ticks_per_sec, 0);
 snprintf(buf, sizeof(buf), "cpu%d:decrementer", curcpu);
 intrcnt_add(buf, &decr_counts[curcpu]);
 decr_et_stop(((void*)0));
 initialized = 1;
}

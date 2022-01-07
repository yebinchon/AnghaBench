
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct cpuref {int dummy; } ;


 int PLATFORM_TIMEBASE_FREQ (int ,struct cpuref*) ;
 int plat_obj ;

u_long
platform_timebase_freq(struct cpuref *cpu)
{
 return (PLATFORM_TIMEBASE_FREQ(plat_obj, cpu));
}

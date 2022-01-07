
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int ticks ;
struct cpuref {int cr_hwref; } ;
typedef int platform_t ;
typedef int phandle_t ;
typedef scalar_t__ int32_t ;


 int OF_getprop (int ,char*,scalar_t__*,int) ;
 int panic (char*) ;

__attribute__((used)) static u_long
powermac_timebase_freq(platform_t plat, struct cpuref *cpuref)
{
 phandle_t phandle;
 int32_t ticks = -1;

 phandle = cpuref->cr_hwref;

 OF_getprop(phandle, "timebase-frequency", &ticks, sizeof(ticks));

 if (ticks <= 0)
  panic("Unable to determine timebase frequency!");

 return (ticks);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int PLATFORM_SMP_TIMEBASE_SYNC (int ,int ,int) ;
 int plat_obj ;

void platform_smp_timebase_sync(u_long tb, int ap)
{

 PLATFORM_SMP_TIMEBASE_SYNC(plat_obj, tb, ap);
}

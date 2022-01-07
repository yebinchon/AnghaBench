
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLATFORM_SMP_PROBE_THREADS (int ) ;
 int plat_obj ;

void
platform_smp_probe_threads(void)
{
 PLATFORM_SMP_PROBE_THREADS(plat_obj);
}

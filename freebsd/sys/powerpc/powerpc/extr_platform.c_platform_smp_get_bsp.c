
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int dummy; } ;


 int PLATFORM_SMP_GET_BSP (int ,struct cpuref*) ;
 int plat_obj ;

int
platform_smp_get_bsp(struct cpuref *cpu)
{
 return (PLATFORM_SMP_GET_BSP(plat_obj, cpu));
}

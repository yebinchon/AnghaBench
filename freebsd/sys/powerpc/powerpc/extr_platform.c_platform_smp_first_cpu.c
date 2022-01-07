
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int dummy; } ;


 int PLATFORM_SMP_FIRST_CPU (int ,struct cpuref*) ;
 int plat_obj ;

int
platform_smp_first_cpu(struct cpuref *cpu)
{
 return (PLATFORM_SMP_FIRST_CPU(plat_obj, cpu));
}

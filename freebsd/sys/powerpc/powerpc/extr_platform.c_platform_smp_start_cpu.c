
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int dummy; } ;


 int PLATFORM_SMP_START_CPU (int ,struct pcpu*) ;
 int plat_obj ;

int
platform_smp_start_cpu(struct pcpu *cpu)
{
 return (PLATFORM_SMP_START_CPU(plat_obj, cpu));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int cr_cpuid; int cr_hwref; } ;
typedef int platform_t ;


 scalar_t__ bootverbose ;
 int cpu ;
 int printf (char*,int) ;

__attribute__((used)) static int
mpc85xx_smp_first_cpu(platform_t plat, struct cpuref *cpuref)
{

 cpu = 0;
 cpuref->cr_cpuid = cpu;
 cpuref->cr_hwref = cpuref->cr_cpuid;
 if (bootverbose)
  printf("powerpc_smp_first_cpu: cpuid %d\n", cpuref->cr_cpuid);
 cpu++;

 return (0);
}

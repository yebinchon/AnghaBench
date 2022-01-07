
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int cr_cpuid; int cr_hwref; } ;
typedef int platform_t ;


 int SPR_PIR ;
 int mfspr (int ) ;

__attribute__((used)) static int
mpc85xx_smp_get_bsp(platform_t plat, struct cpuref *cpuref)
{

 cpuref->cr_cpuid = mfspr(SPR_PIR);
 cpuref->cr_hwref = cpuref->cr_cpuid;

 return (0);
}

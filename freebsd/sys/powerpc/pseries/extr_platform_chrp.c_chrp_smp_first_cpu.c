
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuref {int cr_hwref; scalar_t__ cr_cpuid; } ;
typedef int platform_t ;
struct TYPE_2__ {int cr_hwref; } ;


 int EINVAL ;
 TYPE_1__* platform_cpuref ;
 scalar_t__ platform_cpuref_valid ;

__attribute__((used)) static int
chrp_smp_first_cpu(platform_t plat, struct cpuref *cpuref)
{

 if (platform_cpuref_valid == 0)
  return (EINVAL);

 cpuref->cr_cpuid = 0;
 cpuref->cr_hwref = platform_cpuref[0].cr_hwref;

 return (0);
}

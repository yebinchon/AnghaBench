
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuref {int cr_cpuid; int cr_hwref; } ;
typedef int platform_t ;
struct TYPE_2__ {int cr_cpuid; int cr_hwref; } ;


 int EINVAL ;
 int ENOENT ;
 TYPE_1__* platform_cpuref ;
 int platform_cpuref_cnt ;
 scalar_t__ platform_cpuref_valid ;

__attribute__((used)) static int
chrp_smp_next_cpu(platform_t plat, struct cpuref *cpuref)
{
 int id;

 if (platform_cpuref_valid == 0)
  return (EINVAL);

 id = cpuref->cr_cpuid + 1;
 if (id >= platform_cpuref_cnt)
  return (ENOENT);

 cpuref->cr_cpuid = platform_cpuref[id].cr_cpuid;
 cpuref->cr_hwref = platform_cpuref[id].cr_hwref;

 return (0);
}

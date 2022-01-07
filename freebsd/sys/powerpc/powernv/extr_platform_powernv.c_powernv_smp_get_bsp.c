
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuref {int cr_domain; int cr_hwref; int cr_cpuid; } ;
typedef int platform_t ;
struct TYPE_2__ {int cr_domain; int cr_hwref; int cr_cpuid; } ;


 TYPE_1__* platform_cpuref ;

__attribute__((used)) static int
powernv_smp_get_bsp(platform_t plat, struct cpuref *cpuref)
{

 cpuref->cr_cpuid = platform_cpuref[0].cr_cpuid;
 cpuref->cr_hwref = platform_cpuref[0].cr_hwref;
 cpuref->cr_domain = platform_cpuref[0].cr_domain;
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int cr_cpuid; int cr_hwref; } ;
typedef int phandle_t ;
typedef int cpuid ;
typedef int cell_t ;


 int OF_getprop (int ,char*,int*,int) ;

__attribute__((used)) static int
powermac_smp_fill_cpuref(struct cpuref *cpuref, phandle_t cpu)
{
 cell_t cpuid;
 int res;

 cpuref->cr_hwref = cpu;
 res = OF_getprop(cpu, "reg", &cpuid, sizeof(cpuid));





 if (res < 0) {
  cpuid = 0;
 }

 cpuref->cr_cpuid = cpuid & 0xff;
 return (0);
}

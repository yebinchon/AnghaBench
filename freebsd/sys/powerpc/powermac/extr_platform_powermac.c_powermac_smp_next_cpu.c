
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {scalar_t__ cr_hwref; } ;
typedef int platform_t ;
typedef scalar_t__ phandle_t ;
typedef int buf ;


 int ENOENT ;
 int OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int powermac_smp_fill_cpuref (struct cpuref*,scalar_t__) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
powermac_smp_next_cpu(platform_t plat, struct cpuref *cpuref)
{
 char buf[8];
 phandle_t cpu;
 int res;

 cpu = OF_peer(cpuref->cr_hwref);
 while (cpu != 0) {
  res = OF_getprop(cpu, "device_type", buf, sizeof(buf));
  if (res > 0 && strcmp(buf, "cpu") == 0)
   break;
  cpu = OF_peer(cpu);
 }
 if (cpu == 0)
  return (ENOENT);

 return (powermac_smp_fill_cpuref(cpuref, cpu));
}

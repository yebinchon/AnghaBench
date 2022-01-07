
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int dummy; } ;
typedef int platform_t ;
typedef int phandle_t ;
typedef int inst ;
typedef int ihandle_t ;


 int ENXIO ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,int *,int) ;
 int OF_instance_to_package (int ) ;
 int powermac_smp_fill_cpuref (struct cpuref*,int) ;

__attribute__((used)) static int
powermac_smp_get_bsp(platform_t plat, struct cpuref *cpuref)
{
 ihandle_t inst;
 phandle_t bsp, chosen;
 int res;

 chosen = OF_finddevice("/chosen");
 if (chosen == -1)
  return (ENXIO);

 res = OF_getprop(chosen, "cpu", &inst, sizeof(inst));
 if (res < 0)
  return (ENXIO);

 bsp = OF_instance_to_package(inst);
 return (powermac_smp_fill_cpuref(cpuref, bsp));
}

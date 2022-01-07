
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int dummy; } ;
typedef int platform_t ;
typedef int phandle_t ;
typedef int buf ;


 int ENOENT ;
 int OF_child (int) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_peer (int) ;
 int powermac_smp_fill_cpuref (struct cpuref*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
powermac_smp_first_cpu(platform_t plat, struct cpuref *cpuref)
{
 char buf[8];
 phandle_t cpu, dev, root;
 int res;

 root = OF_peer(0);

 dev = OF_child(root);
 while (dev != 0) {
  res = OF_getprop(dev, "name", buf, sizeof(buf));
  if (res > 0 && strcmp(buf, "cpus") == 0)
   break;
  dev = OF_peer(dev);
 }
 if (dev == 0) {




  dev = OF_finddevice("/cpus");
  if (dev == -1)
   return (ENOENT);
 }

 cpu = OF_child(dev);

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


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int ticks ;
struct cpuref {int dummy; } ;
typedef int platform_t ;
typedef scalar_t__ phandle_t ;
typedef scalar_t__ int32_t ;
typedef int buf ;


 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 int OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int panic (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static u_long
powernv_timebase_freq(platform_t plat, struct cpuref *cpuref)
{
 char buf[8];
 phandle_t cpu, dev, root;
 int res;
 int32_t ticks = -1;

 root = OF_peer(0);
 dev = OF_child(root);
 while (dev != 0) {
  res = OF_getprop(dev, "name", buf, sizeof(buf));
  if (res > 0 && strcmp(buf, "cpus") == 0)
   break;
  dev = OF_peer(dev);
 }

 for (cpu = OF_child(dev); cpu != 0; cpu = OF_peer(cpu)) {
  res = OF_getprop(cpu, "device_type", buf, sizeof(buf));
  if (res > 0 && strcmp(buf, "cpu") == 0)
   break;
 }
 if (cpu == 0)
  return (512000000);

 OF_getencprop(cpu, "timebase-frequency", &ticks, sizeof(ticks));

 if (ticks <= 0)
  panic("Unable to determine timebase frequency!");

 return (ticks);

}

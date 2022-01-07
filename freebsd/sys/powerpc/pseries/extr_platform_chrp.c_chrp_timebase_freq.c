
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int ticks ;
struct cpuref {int dummy; } ;
typedef int platform_t ;
typedef int phandle_t ;
typedef scalar_t__ int32_t ;
typedef int buf ;


 int OF_child (int) ;
 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,scalar_t__*,int) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_peer (int) ;
 int panic (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static u_long
chrp_timebase_freq(platform_t plat, struct cpuref *cpuref)
{
 phandle_t cpus, cpunode;
 int32_t ticks = -1;
 int res;
 char buf[8];

 cpus = OF_finddevice("/cpus");
 if (cpus == -1)
  panic("CPU tree not found on Open Firmware\n");

 for (cpunode = OF_child(cpus); cpunode != 0; cpunode = OF_peer(cpunode)) {
  res = OF_getprop(cpunode, "device_type", buf, sizeof(buf));
  if (res > 0 && strcmp(buf, "cpu") == 0)
   break;
 }
 if (cpunode <= 0)
  panic("CPU node not found on Open Firmware\n");

 OF_getencprop(cpunode, "timebase-frequency", &ticks, sizeof(ticks));

 if (ticks <= 0)
  panic("Unable to determine timebase frequency!");

 return (ticks);
}

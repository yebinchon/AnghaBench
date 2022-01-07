
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,int *,int) ;
 int OF_getproplen (int,char*) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
riscv_timer_get_timebase(device_t dev, uint32_t *freq)
{
 phandle_t node;
 int len;

 node = OF_finddevice("/cpus");
 if (node == -1) {
  if (bootverbose)
   device_printf(dev, "Can't find cpus node.\n");
  return (ENXIO);
 }

 len = OF_getproplen(node, "timebase-frequency");
 if (len != 4) {
  if (bootverbose)
   device_printf(dev,
       "Can't find timebase-frequency property.\n");
  return (ENXIO);
 }

 OF_getencprop(node, "timebase-frequency", freq, len);

 return (0);
}

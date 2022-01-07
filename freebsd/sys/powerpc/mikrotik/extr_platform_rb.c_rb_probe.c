
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;
typedef int phandle_t ;
typedef int model ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
rb_probe(platform_t plat)
{
 phandle_t rootnode;
 char model[32];

 rootnode = OF_finddevice("/");

 if (OF_getprop(rootnode, "model", model, sizeof(model)) > 0) {
  if (strcmp(model, "RB800") == 0)
   return (BUS_PROBE_SPECIFIC);
 }

 return (ENXIO);
}

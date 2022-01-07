
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
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static int
aeon_probe(platform_t plat)
{
 phandle_t rootnode;
 char model[32];

 rootnode = OF_finddevice("/");

 if (OF_getprop(rootnode, "model", model, sizeof(model)) > 0) {
  if (strncmp(model, "varisys,", strlen("varisys,")) == 0)
   return (BUS_PROBE_SPECIFIC);
 }

 return (ENXIO);
}

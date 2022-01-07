
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;
typedef int phandle_t ;
typedef int model ;


 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 int ofw_quiesce () ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
powermac_attach(platform_t plat)
{
 phandle_t rootnode;
 char model[32];
 rootnode = OF_finddevice("/");
 if (OF_getprop(rootnode, "model", model, sizeof(model)) > 0) {
  if (strcmp(model, "PowerMac11,2") == 0 ||
      strcmp(model, "PowerMac12,1") == 0) {
   ofw_quiesce();
  }
 }

 return (0);
}

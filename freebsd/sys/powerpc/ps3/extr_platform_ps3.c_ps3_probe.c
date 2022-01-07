
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;
typedef int phandle_t ;
typedef int compatible ;


 int BUS_PROBE_NOWILDCARD ;
 int BUS_PROBE_SPECIFIC ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
ps3_probe(platform_t plat)
{
 phandle_t root;
 char compatible[64];

 root = OF_finddevice("/");
 if (OF_getprop(root, "compatible", compatible, sizeof(compatible)) <= 0)
                return (BUS_PROBE_NOWILDCARD);

 if (strncmp(compatible, "sony,ps3", sizeof(compatible)) != 0)
  return (BUS_PROBE_NOWILDCARD);

 return (BUS_PROBE_SPECIFIC);
}

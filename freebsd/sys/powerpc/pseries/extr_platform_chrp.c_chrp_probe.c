
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int OF_finddevice (char*) ;

__attribute__((used)) static int
chrp_probe(platform_t plat)
{
 if (OF_finddevice("/memory") != -1 || OF_finddevice("/memory@0") != -1)
  return (BUS_PROBE_GENERIC);

 return (ENXIO);
}

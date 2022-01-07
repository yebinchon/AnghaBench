
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 scalar_t__ opal_check () ;

__attribute__((used)) static int
powernv_probe(platform_t plat)
{
 if (opal_check() == 0)
  return (BUS_PROBE_SPECIFIC);

 return (ENXIO);
}

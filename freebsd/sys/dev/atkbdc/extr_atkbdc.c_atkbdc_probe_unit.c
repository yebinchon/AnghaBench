
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int ENXIO ;
 scalar_t__ rman_get_start (struct resource*) ;

int
atkbdc_probe_unit(int unit, struct resource *port0, struct resource *port1)
{
 if (rman_get_start(port0) <= 0)
  return ENXIO;
 if (rman_get_start(port1) <= 0)
  return ENXIO;
 return 0;
}

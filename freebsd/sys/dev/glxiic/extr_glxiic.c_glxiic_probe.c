
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
glxiic_probe(device_t dev)
{

 if (resource_disabled("glxiic", device_get_unit(dev)))
  return (ENXIO);

 device_set_desc(dev, "AMD Geode CS5536 SMBus controller");

 return (BUS_PROBE_DEFAULT);
}

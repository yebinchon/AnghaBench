
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 char const* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
jbusppm_probe(device_t dev)
{
 const char* compat;

 compat = ofw_bus_get_compat(dev);
 if (compat != ((void*)0) && strcmp(ofw_bus_get_name(dev), "ppm") == 0 &&
     strcmp(compat, "jbus-ppm") == 0) {
  device_set_desc(dev, "JBus power management");
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}

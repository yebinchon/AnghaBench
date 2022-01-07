
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
cs4231_bus_probe(device_t dev)
{
 const char *compat, *name;

 compat = ofw_bus_get_compat(dev);
 name = ofw_bus_get_name(dev);
 if (strcmp("SUNW,CS4231", name) == 0 ||
     (compat != ((void*)0) && strcmp("SUNW,CS4231", compat) == 0)) {
  device_set_desc(dev, "Sun Audiocs");
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}

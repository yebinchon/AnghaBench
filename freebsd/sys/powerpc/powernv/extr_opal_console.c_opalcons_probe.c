
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
opalcons_probe(device_t dev)
{
 const char *name;

 name = ofw_bus_get_name(dev);
 if (name == ((void*)0) || strcmp(name, "consoles") != 0)
  return (ENXIO);

 device_set_desc(dev, "OPAL Consoles");
 return (BUS_PROBE_SPECIFIC);
}

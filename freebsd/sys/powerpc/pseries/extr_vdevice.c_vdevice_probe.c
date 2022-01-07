
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
vdevice_probe(device_t dev)
{
 const char *name;

 name = ofw_bus_get_name(dev);

 if (name == ((void*)0) || strcmp(name, "vdevice") != 0)
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "IBM,vdevice"))
  return (ENXIO);

 device_set_desc(dev, "POWER Hypervisor Virtual Device Root");

 return (0);
}

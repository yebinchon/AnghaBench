
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_type (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
powermac_nvram_probe(device_t dev)
{
 const char *type, *compatible;

 type = ofw_bus_get_type(dev);
 compatible = ofw_bus_get_compat(dev);

 if (type == ((void*)0) || compatible == ((void*)0))
  return ENXIO;

 if (strcmp(type, "nvram") != 0)
  return ENXIO;
 if (strcmp(compatible, "amd-0137") != 0 &&
     !ofw_bus_is_compatible(dev, "nvram,flash"))
  return ENXIO;

 device_set_desc(dev, "Apple NVRAM");
 return 0;
}

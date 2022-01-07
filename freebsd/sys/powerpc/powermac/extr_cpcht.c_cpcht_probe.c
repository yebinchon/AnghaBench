
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_type (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
cpcht_probe(device_t dev)
{
 const char *type, *compatible;

 type = ofw_bus_get_type(dev);
 compatible = ofw_bus_get_compat(dev);

 if (type == ((void*)0) || compatible == ((void*)0))
  return (ENXIO);

 if (strcmp(type, "ht") != 0)
  return (ENXIO);

 if (strcmp(compatible, "u3-ht") != 0)
  return (ENXIO);

 device_set_desc(dev, "IBM CPC9X5 HyperTransport Tunnel");
 return (0);
}

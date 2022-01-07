
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc_copy (int ,char const*) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
lebuffer_probe(device_t dev)
{
 const char *name;

 name = ofw_bus_get_name(dev);
 if (strcmp(name, "lebuffer") == 0) {
  device_set_desc_copy(dev, name);
  return (0);
 }
 return (ENXIO);
}

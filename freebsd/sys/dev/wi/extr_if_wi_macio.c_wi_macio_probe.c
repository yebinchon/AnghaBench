
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
wi_macio_probe(device_t dev)
{
 const char *name, *compat;


 name = ofw_bus_get_name(dev);
 if (name == ((void*)0))
  return (ENXIO);

 if (strcmp(name, "radio") != 0) {
  return ENXIO;
 }
 compat = ofw_bus_get_compat(dev);
 if (strcmp(compat, "wireless") != 0) {
  return ENXIO;
 }

 device_set_desc(dev, "Apple Airport");
 return 0;
}

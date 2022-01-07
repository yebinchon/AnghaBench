
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int OFW_TYPE_PCI ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_type (int ) ;
 int * schizo_get_desc (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
schizo_probe(device_t dev)
{
 const char *dtype;

 dtype = ofw_bus_get_type(dev);
 if (dtype != ((void*)0) && strcmp(dtype, OFW_TYPE_PCI) == 0 &&
     schizo_get_desc(dev) != ((void*)0)) {
  device_set_desc(dev, "Sun Host-PCI bridge");
  return (0);
 }
 return (ENXIO);
}

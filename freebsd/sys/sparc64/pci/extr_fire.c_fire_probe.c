
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int OFW_TYPE_PCIE ;
 int device_set_desc (int ,char*) ;
 int * fire_get_desc (int ) ;
 char* ofw_bus_get_type (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
fire_probe(device_t dev)
{
 const char *dtype;

 dtype = ofw_bus_get_type(dev);
 if (dtype != ((void*)0) && strcmp(dtype, OFW_TYPE_PCIE) == 0 &&
     fire_get_desc(dev) != ((void*)0)) {
  device_set_desc(dev, "Sun Host-PCIe bridge");
  return (BUS_PROBE_GENERIC);
 }
 return (ENXIO);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 char const* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ebus_nexus_probe(device_t dev)
{
 const char* compat;

 compat = ofw_bus_get_compat(dev);
 if (compat != ((void*)0) && strcmp(ofw_bus_get_name(dev), "ebus") == 0 &&
     strcmp(compat, "jbus-ebus") == 0) {
  device_set_desc(dev, "JBus-EBus bridge");
  return (BUS_PROBE_GENERIC);
 }
 return (ENXIO);
}

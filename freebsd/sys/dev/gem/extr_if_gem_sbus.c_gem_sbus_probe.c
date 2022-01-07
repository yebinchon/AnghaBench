
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int * ofw_bus_get_compat (int ) ;
 int * ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
gem_sbus_probe(device_t dev)
{

 if (strcmp(ofw_bus_get_name(dev), "network") == 0 &&
     ofw_bus_get_compat(dev) != ((void*)0) &&
     strcmp(ofw_bus_get_compat(dev), "SUNW,sbus-gem") == 0) {
  device_set_desc(dev, "Sun GEM Gigabit Ethernet");
  return (0);
 }

 return (ENXIO);
}

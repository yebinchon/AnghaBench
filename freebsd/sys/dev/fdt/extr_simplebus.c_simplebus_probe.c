
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int * ofw_bus_get_type (int ) ;
 scalar_t__ ofw_bus_has_prop (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
simplebus_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);






 if (!(ofw_bus_is_compatible(dev, "simple-bus") &&
     ofw_bus_has_prop(dev, "ranges")) &&
     (ofw_bus_get_type(dev) == ((void*)0) || strcmp(ofw_bus_get_type(dev),
      "soc") != 0))
  return (ENXIO);

 device_set_desc(dev, "Flattened device tree simple bus");

 return (BUS_PROBE_GENERIC);
}

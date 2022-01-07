
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int cfi_probe (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
cfi_fdt_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "cfi-flash"))
  return (ENXIO);

 return (cfi_probe(dev));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
jz4780_mmc_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);
 if (!ofw_bus_is_compatible(dev, "ingenic,jz4780-mmc"))
  return (ENXIO);
 if (device_get_unit(dev) > 0)
  return (ENXIO);
 device_set_desc(dev, "Ingenic JZ4780 Integrated MMC/SD controller");

 return (BUS_PROBE_DEFAULT);
}

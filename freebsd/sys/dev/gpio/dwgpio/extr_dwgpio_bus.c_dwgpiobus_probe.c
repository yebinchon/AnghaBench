
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
dwgpiobus_probe(device_t dev)
{

 if (!ofw_bus_is_compatible(dev, "snps,dw-apb-gpio"))
  return (ENXIO);

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 device_set_desc(dev, "Synopsys® DesignWare® APB GPIO BUS");

 return (BUS_PROBE_DEFAULT);
}

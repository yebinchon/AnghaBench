
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
saf1761_otg_fdt_probe(device_t dev)
{
 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "nxp,usb-isp1761"))
  return (ENXIO);

 device_set_desc(dev, "ISP1761/SAF1761 DCI USB 2.0 Device Controller");

 return (0);
}

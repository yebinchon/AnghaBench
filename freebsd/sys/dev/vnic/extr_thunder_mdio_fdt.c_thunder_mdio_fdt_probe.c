
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int THUNDER_MDIO_DEVSTR ;
 int device_set_desc (int ,int ) ;
 int mdio_compat_data ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
thunder_mdio_fdt_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);
 if (!ofw_bus_search_compatible(dev, mdio_compat_data)->ocd_data)
  return (ENXIO);

 device_set_desc(dev, THUNDER_MDIO_DEVSTR);
 return (BUS_PROBE_DEFAULT);
}

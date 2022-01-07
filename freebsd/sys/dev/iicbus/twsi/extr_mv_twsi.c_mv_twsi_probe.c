
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twsi_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int compat_data ;
 struct twsi_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
mv_twsi_probe(device_t dev)
{
 struct twsi_softc *sc;

 sc = device_get_softc(dev);
 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_search_compatible(dev, compat_data)->ocd_data)
  return (ENXIO);

 device_set_desc(dev, "Marvell Integrated I2C Bus Controller");
 return (BUS_PROBE_DEFAULT);
}

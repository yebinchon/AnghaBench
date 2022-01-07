
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snps_dwc3_softc {int dr_mode; int node; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int OF_getprop (int ,char*,int ,int) ;
 int compat_data ;
 struct snps_dwc3_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
snps_dwc3_probe(device_t dev)
{
 struct snps_dwc3_softc *sc;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == 0)
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->node = ofw_bus_get_node(dev);
 OF_getprop(sc->node, "dr_mode", sc->dr_mode, sizeof(sc->dr_mode));
 if (strcmp(sc->dr_mode, "host") != 0) {
  device_printf(dev, "Only host mode is supported\n");
  return (ENXIO);
 }

 device_set_desc(dev, "Synopsys Designware DWC3");
 return (BUS_PROBE_DEFAULT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_usb_phy_softc {int socid; } ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int ENXIO ;
 int MTK_SOC_UNKNOWN ;
 int compat_data ;
 struct mtk_usb_phy_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
mtk_usb_phy_probe(device_t dev)
{
 struct mtk_usb_phy_softc *sc = device_get_softc(dev);

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);
 if ((sc->socid =
     ofw_bus_search_compatible(dev, compat_data)->ocd_data) ==
     MTK_SOC_UNKNOWN)
  return (ENXIO);

 device_set_desc(dev, "MTK USB PHY");

 return (0);
}

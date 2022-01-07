
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtkswitch_softc {scalar_t__ sc_switchtype; } ;
typedef scalar_t__ mtk_switch_type ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 scalar_t__ MTK_SWITCH_NONE ;
 int bzero (struct mtkswitch_softc*,int) ;
 int compat_data ;
 struct mtkswitch_softc* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
mtkswitch_probe(device_t dev)
{
 struct mtkswitch_softc *sc;
 mtk_switch_type switch_type;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 switch_type = ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 if (switch_type == MTK_SWITCH_NONE)
  return (ENXIO);

 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));
 sc->sc_switchtype = switch_type;

 device_set_desc_copy(dev, "MTK Switch Driver");

 return (0);
}

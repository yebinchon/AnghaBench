
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwmmc_softc {int use_pio; int pwren_inverted; int * update_ios; int hwtype; } ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int HWTYPE_ROCKCHIP ;

 int compat_data ;
 struct dwmmc_softc* device_get_softc (int ) ;
 int dwmmc_attach (int ) ;
 int dwmmc_rockchip_update_ios ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
rockchip_dwmmc_attach(device_t dev)
{
 struct dwmmc_softc *sc;
 int type;

 sc = device_get_softc(dev);
 sc->hwtype = HWTYPE_ROCKCHIP;
 type = ofw_bus_search_compatible(dev, compat_data)->ocd_data;

 switch (type) {
 case 128:
  sc->use_pio = 1;
  break;
 }

 sc->pwren_inverted = 1;





 return (dwmmc_attach(dev));
}

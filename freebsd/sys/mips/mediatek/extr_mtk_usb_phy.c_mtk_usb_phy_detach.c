
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_usb_phy_softc {int * res; } ;
typedef int phandle_t ;
typedef int device_t ;


 scalar_t__ OF_hasprop (int ,char*) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct mtk_usb_phy_softc* device_get_softc (int ) ;
 int fdt_clock_disable_all (int ) ;
 int fdt_reset_assert_all (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
mtk_usb_phy_detach(device_t dev)
{
 struct mtk_usb_phy_softc *sc = device_get_softc(dev);
 phandle_t node;


 node = ofw_bus_get_node(dev);


 if (OF_hasprop(node, "resets"))
  fdt_reset_assert_all(dev);


 if (OF_hasprop(node, "clocks"))
  fdt_clock_disable_all(dev);


 if (sc->res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->res);

 return (0);
}

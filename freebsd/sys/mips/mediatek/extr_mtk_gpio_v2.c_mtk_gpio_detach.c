
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_gpio_softc {int * res; int * intrhand; } ;
typedef int phandle_t ;
typedef int device_t ;


 int MTK_GPIO_LOCK_DESTROY (struct mtk_gpio_softc*) ;
 int OF_xref_from_node (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;
 int intr_pic_deregister (int ,int ) ;
 int mtk_gpio_spec ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
mtk_gpio_detach(device_t dev)
{
 struct mtk_gpio_softc *sc = device_get_softc(dev);
 phandle_t node;

 node = ofw_bus_get_node(dev);
 intr_pic_deregister(dev, OF_xref_from_node(node));
 if (sc->intrhand != ((void*)0))
  bus_teardown_intr(dev, sc->res[1], sc->intrhand);
 bus_release_resources(dev, mtk_gpio_spec, sc->res);
 MTK_GPIO_LOCK_DESTROY(sc);
 return (0);
}

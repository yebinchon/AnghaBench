
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_spi_softc {int nonflash; TYPE_1__* gpio_cs; int sc_mem_res; int sc_dev; } ;
typedef int device_t ;
struct TYPE_2__ {int pin; int dev; } ;


 int EBUSY ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int ,int ,int) ;
 int GPIO_PIN_SETFLAGS (int ,int ,int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int device_add_child (int ,char*,int) ;
 struct mtk_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ mtk_spi_wait (struct mtk_spi_softc*) ;
 scalar_t__ ofw_bus_has_prop (int ,char*) ;
 int ofw_gpiobus_parse_gpios (int ,char*,TYPE_1__**) ;

__attribute__((used)) static int
mtk_spi_attach(device_t dev)
{
 struct mtk_spi_softc *sc = device_get_softc(dev);
 int rid;

 sc->sc_dev = dev;
        rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "Could not map memory\n");
  return (ENXIO);
 }

 if (mtk_spi_wait(sc)) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  return (EBUSY);
 }

 if (ofw_bus_has_prop(dev, "non-flash"))
  sc->nonflash = 1;
 else
  sc->nonflash = 0;

 ofw_gpiobus_parse_gpios(dev, "cs-gpios", &sc->gpio_cs);

 if (sc->gpio_cs != ((void*)0)) {
  GPIO_PIN_SETFLAGS(sc->gpio_cs->dev, sc->gpio_cs->pin,
      GPIO_PIN_OUTPUT);
  GPIO_PIN_SET(sc->gpio_cs->dev, sc->gpio_cs->pin, 1);
 }

 device_add_child(dev, "spibus", -1);
 return (bus_generic_attach(dev));
}

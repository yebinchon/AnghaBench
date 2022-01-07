
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcc_gpio_softc {int sc_gpio_npins; int sc_mtx; int * sc_io_res; int sc_io_rid; } ;
typedef int device_t ;
struct TYPE_2__ {int pin; } ;


 int RCC_GPIO_USE_SEL ;
 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct rcc_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;
 int mtx_destroy (int *) ;
 int rcc_gpio_modify_bits (struct rcc_gpio_softc*,int ,int ,int ) ;
 TYPE_1__* rcc_pins ;

__attribute__((used)) static int
rcc_gpio_detach(device_t dev)
{
 int i;
 struct rcc_gpio_softc *sc;

 sc = device_get_softc(dev);
 gpiobus_detach_bus(dev);


 for (i = 0; i < sc->sc_gpio_npins; i++)
  rcc_gpio_modify_bits(sc, RCC_GPIO_USE_SEL, rcc_pins[i].pin, 0);

 if (sc->sc_io_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IOPORT, sc->sc_io_rid,
      sc->sc_io_res);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}

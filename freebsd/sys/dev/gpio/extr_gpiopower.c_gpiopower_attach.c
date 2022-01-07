
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiopower_softc {int sc_rbmask; int * sc_pin; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int GPIO_PIN_OUTPUT ;
 int RB_HALT ;
 int RB_POWEROFF ;
 int SHUTDOWN_PRI_LAST ;
 struct gpiopower_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int gpio_pin_setflags (int *,int ) ;
 int gpiopower_assert ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_gpiobus_parse_gpios (int ,char*,int **) ;
 int shutdown_final ;

__attribute__((used)) static int
gpiopower_attach(device_t dev)
{
 struct gpiopower_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);

 if ((node = ofw_bus_get_node(dev)) == -1)
  return (ENXIO);

 ofw_gpiobus_parse_gpios(dev, "gpios", &sc->sc_pin);
 if (sc->sc_pin == ((void*)0)) {
  device_printf(dev, "failed to map GPIO pin\n");
  return (ENXIO);
 }

 if (ofw_bus_is_compatible(dev, "gpio-poweroff"))
  sc->sc_rbmask = RB_HALT | RB_POWEROFF;
 else
  sc->sc_rbmask = 0;
 EVENTHANDLER_REGISTER(shutdown_final, gpiopower_assert, dev,
     SHUTDOWN_PRI_LAST);
 gpio_pin_setflags(sc->sc_pin, GPIO_PIN_OUTPUT);

 return (0);
}

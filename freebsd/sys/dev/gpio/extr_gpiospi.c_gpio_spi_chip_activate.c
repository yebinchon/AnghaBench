
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_spi_softc {int sc_dev; int sc_cs3; int sc_busdev; int sc_cs2; int sc_cs1; int sc_cs0; } ;


 int GPIOBUS_PIN_SET (int ,int ,int ,int ) ;
 int device_printf (int ,char*,int) ;
 int gpio_delay (struct gpio_spi_softc*) ;

__attribute__((used)) static void
gpio_spi_chip_activate(struct gpio_spi_softc *sc, int cs)
{


 switch (cs) {
 case 0:
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs0, 0);
  break;
 case 1:
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs1, 0);
  break;
 case 2:
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs2, 0);
  break;
 case 3:
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs3, 0);
  break;
 default:
  device_printf(sc->sc_dev, "don't have CS%d\n", cs);
 }

 gpio_delay(sc);
}

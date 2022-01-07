
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_spi_softc {int sc_cs0; int sc_cs1; int sc_cs2; int sc_cs3; int sc_dev; int sc_busdev; } ;


 int GPIOBUS_PIN_SET (int ,int ,int,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
gpio_spi_chip_deactivate(struct gpio_spi_softc *sc, int cs)
{





 switch (cs) {
 case -1:

  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs0, 1);
  if (sc->sc_cs1 == 0xff) break;
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs1, 1);
  if (sc->sc_cs2 == 0xff) break;
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs2, 1);
  if (sc->sc_cs3 == 0xff) break;
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs3, 1);
  break;
 case 0:
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs0, 1);
  break;
 case 1:
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs1, 1);
  break;
 case 2:
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs2, 1);
  break;
 case 3:
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_cs3, 1);
  break;
 default:
  device_printf(sc->sc_dev, "don't have CS%d\n", cs);
 }
}

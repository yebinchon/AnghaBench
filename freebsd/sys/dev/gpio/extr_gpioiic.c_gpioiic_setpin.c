
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioiic_softc {int sc_dev; int sc_busdev; } ;


 int GPIOBUS_PIN_SET (int ,int ,int,int ) ;
 int GPIOBUS_PIN_SETFLAGS (int ,int ,int,int ) ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;

__attribute__((used)) static void
gpioiic_setpin(struct gpioiic_softc *sc, int pin, int val)
{
 int err;

 if (val == 0) {
  err = GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev, pin, 0);
  GPIOBUS_PIN_SETFLAGS(sc->sc_busdev, sc->sc_dev, pin,
      GPIO_PIN_OUTPUT);





  if (err != 0)
   GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev, pin, 0);
 } else {
  GPIOBUS_PIN_SETFLAGS(sc->sc_busdev, sc->sc_dev, pin,
      GPIO_PIN_INPUT);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioled_softc {int sc_dev; int sc_busdev; scalar_t__ sc_invert; } ;


 int GPIOBUS_PIN_SET (int ,int ,int ,int ) ;
 scalar_t__ GPIOBUS_PIN_SETFLAGS (int ,int ,int ,int ) ;
 int GPIOLED_LOCK (struct gpioled_softc*) ;
 int GPIOLED_PIN ;
 int GPIOLED_UNLOCK (struct gpioled_softc*) ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_LOW ;
 int GPIO_PIN_OUTPUT ;

__attribute__((used)) static void
gpioled_control(void *priv, int onoff)
{
 struct gpioled_softc *sc;

 sc = (struct gpioled_softc *)priv;
 GPIOLED_LOCK(sc);
 if (GPIOBUS_PIN_SETFLAGS(sc->sc_busdev, sc->sc_dev, GPIOLED_PIN,
     GPIO_PIN_OUTPUT) == 0) {
  if (sc->sc_invert)
   onoff = !onoff;
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev, GPIOLED_PIN,
      onoff ? GPIO_PIN_HIGH : GPIO_PIN_LOW);
 }
 GPIOLED_UNLOCK(sc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioiic_softc {int sc_dev; int sc_busdev; } ;


 int GPIOBUS_PIN_GET (int ,int ,int,unsigned int*) ;
 int GPIOBUS_PIN_SETFLAGS (int ,int ,int,int ) ;
 int GPIO_PIN_INPUT ;

__attribute__((used)) static int
gpioiic_getpin(struct gpioiic_softc *sc, int pin)
{
 unsigned int val;

 GPIOBUS_PIN_SETFLAGS(sc->sc_busdev, sc->sc_dev, pin, GPIO_PIN_INPUT);
 GPIOBUS_PIN_GET(sc->sc_busdev, sc->sc_dev, pin, &val);
 return ((int)val);
}

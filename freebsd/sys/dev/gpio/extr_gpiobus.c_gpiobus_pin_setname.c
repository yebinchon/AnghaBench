
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct gpiobus_softc {size_t sc_npins; TYPE_1__* sc_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int * name; } ;


 int EINVAL ;
 struct gpiobus_softc* GPIOBUS_SOFTC (int ) ;
 int GPIOMAXNAME ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * malloc (int ,int ,int) ;
 int strlcpy (int *,char const*,int ) ;

__attribute__((used)) static int
gpiobus_pin_setname(device_t dev, uint32_t pin, const char *name)
{
 struct gpiobus_softc *sc;

 sc = GPIOBUS_SOFTC(dev);
 if (pin > sc->sc_npins)
  return (EINVAL);
 if (name == ((void*)0))
  return (EINVAL);

 if (sc->sc_pins[pin].name == ((void*)0))
  sc->sc_pins[pin].name = malloc(GPIOMAXNAME, M_DEVBUF,
      M_WAITOK | M_ZERO);
 strlcpy(sc->sc_pins[pin].name, name, GPIOMAXNAME);

 return (0);
}

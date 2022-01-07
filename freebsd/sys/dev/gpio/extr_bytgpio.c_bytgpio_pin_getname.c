
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bytgpio_softc {char* sc_bank_prefix; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIOMAXNAME ;
 scalar_t__ bytgpio_valid_pin (struct bytgpio_softc*,int ) ;
 struct bytgpio_softc* device_get_softc (int ) ;
 int snprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static int
bytgpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct bytgpio_softc *sc;

 sc = device_get_softc(dev);
 if (bytgpio_valid_pin(sc, pin) != 0)
  return (EINVAL);


 snprintf(name, GPIOMAXNAME, "%s%u", sc->sc_bank_prefix, pin);
 name[GPIOMAXNAME - 1] = '\0';

 return (0);
}

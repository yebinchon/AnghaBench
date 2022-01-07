
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct chvgpio_softc {char** sc_pin_names; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIOMAXNAME ;
 scalar_t__ chvgpio_valid_pin (struct chvgpio_softc*,size_t) ;
 struct chvgpio_softc* device_get_softc (int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
chvgpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct chvgpio_softc *sc;

 sc = device_get_softc(dev);
 if (chvgpio_valid_pin(sc, pin) != 0)
  return (EINVAL);


 snprintf(name, GPIOMAXNAME, "%s", sc->sc_pin_names[pin]);
 name[GPIOMAXNAME - 1] = '\0';
 return (0);
}

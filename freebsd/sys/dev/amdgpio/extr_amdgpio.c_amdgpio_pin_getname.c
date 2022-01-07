
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct amdgpio_softc {TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {char* gp_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 int amdgpio_valid_pin (struct amdgpio_softc*,size_t) ;
 struct amdgpio_softc* device_get_softc (int ) ;
 int dprintf (char*,size_t,...) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
amdgpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct amdgpio_softc *sc;

 dprintf("pin %d\n", pin);
 sc = device_get_softc(dev);

 if (!amdgpio_valid_pin(sc, pin))
  return (EINVAL);


 snprintf(name, GPIOMAXNAME, "%s", sc->sc_gpio_pins[pin].gp_name);
 name[GPIOMAXNAME - 1] = '\0';

 dprintf("pin %d name %s\n", pin, name);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mtk_gpio_softc {size_t num_pins; TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {int pin_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 struct mtk_gpio_softc* device_get_softc (int ) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int
mtk_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct mtk_gpio_softc *sc = device_get_softc(dev);

 if (pin >= sc->num_pins)
  return (EINVAL);

 strncpy(name, sc->pins[pin].pin_name, GPIOMAXNAME - 1);
 name[GPIOMAXNAME - 1] = '\0';

 return (0);
}

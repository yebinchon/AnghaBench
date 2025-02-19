
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct mtk_gpio_softc {TYPE_1__* pins; } ;
struct TYPE_2__ {unsigned int pin_caps; unsigned int pin_flags; } ;


 int EINVAL ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 int GPIO_PIODIR ;
 unsigned int MTK_READ_4 (struct mtk_gpio_softc*,int ) ;
 int MTK_WRITE_4 (struct mtk_gpio_softc*,int ,unsigned int) ;

__attribute__((used)) static int
mtk_gpio_pin_set_direction(struct mtk_gpio_softc *sc, uint32_t pin,
    uint32_t dir)
{
 uint32_t regval, mask = (1u << pin);

 if (!(sc->pins[pin].pin_caps & dir))
  return (EINVAL);

 regval = MTK_READ_4(sc, GPIO_PIODIR);
 if (dir == GPIO_PIN_INPUT)
  regval &= ~mask;
 else
  regval |= mask;
 MTK_WRITE_4(sc, GPIO_PIODIR, regval);

 sc->pins[pin].pin_flags &= ~(GPIO_PIN_INPUT | GPIO_PIN_OUTPUT);
 sc->pins[pin].pin_flags |= dir;

 return (0);
}

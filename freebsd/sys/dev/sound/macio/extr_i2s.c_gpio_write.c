
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct aoagpio_softc {int dev; } ;
typedef enum gpio_ctrl { ____Placeholder_gpio_ctrl } gpio_ctrl ;


 scalar_t__ GPIO_DATA ;
 scalar_t__ GPIO_DDR_OUTPUT ;
 struct aoagpio_softc** gpio_ctrls ;
 int macgpio_write (int ,scalar_t__) ;

__attribute__((used)) static void
gpio_write(enum gpio_ctrl ctrl, u_int x)
{
 struct aoagpio_softc *sc;
 u_int reg;

 if ((sc = gpio_ctrls[ctrl]) == ((void*)0))
  return;

 reg = GPIO_DDR_OUTPUT;
 if (x)
  reg |= GPIO_DATA;

 macgpio_write(sc->dev, reg);
}

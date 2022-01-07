
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct aoagpio_softc {int dev; } ;
typedef enum gpio_ctrl { ____Placeholder_gpio_ctrl } gpio_ctrl ;


 int GPIO_DATA ;
 struct aoagpio_softc** gpio_ctrls ;
 int macgpio_read (int ) ;

__attribute__((used)) static u_int
gpio_read(enum gpio_ctrl ctrl)
{
 struct aoagpio_softc *sc;

 if ((sc = gpio_ctrls[ctrl]) == ((void*)0))
  return (0);

 return (macgpio_read(sc->dev) & GPIO_DATA);
}

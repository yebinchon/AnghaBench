
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ar71xx_gpio_softc {int dummy; } ;


 int AR71XX_GPIO_OE ;
 int GPIO_CLEAR_BITS (struct ar71xx_gpio_softc*,int ,int) ;
 int GPIO_SET_BITS (struct ar71xx_gpio_softc*,int ,int) ;
 scalar_t__ ar71xx_gpio_oe_is_high () ;

__attribute__((used)) static void
ar71xx_gpio_oe_set_output(struct ar71xx_gpio_softc *sc, int b)
{
 uint32_t mask;

 mask = 1 << b;

 if (ar71xx_gpio_oe_is_high())
  GPIO_SET_BITS(sc, AR71XX_GPIO_OE, mask);
 else
  GPIO_CLEAR_BITS(sc, AR71XX_GPIO_OE, mask);
}

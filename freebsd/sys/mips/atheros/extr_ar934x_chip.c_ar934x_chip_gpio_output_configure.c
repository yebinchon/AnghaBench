
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AR71XX_GPIO_BASE ;
 int AR934X_GPIO_COUNT ;
 int AR934X_GPIO_REG_OUT_FUNC0 ;
 int ATH_READ_REG (int) ;
 int ATH_WRITE_REG (int,int) ;
 int rounddown (int,int) ;

__attribute__((used)) static void
ar934x_chip_gpio_output_configure(int gpio, uint8_t func)
{
 uint32_t reg, s;
 uint32_t t;

 if (gpio > AR934X_GPIO_COUNT)
  return;

 reg = AR934X_GPIO_REG_OUT_FUNC0 + rounddown(gpio, 4);
 s = 8 * (gpio % 4);


 t = ATH_READ_REG(AR71XX_GPIO_BASE + reg);
 t &= ~(0xff << s);
 t |= func << s;
 ATH_WRITE_REG(AR71XX_GPIO_BASE + reg, t);


 ATH_READ_REG(AR71XX_GPIO_BASE + reg);
}

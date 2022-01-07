
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ar71xx_gpio_softc {int dummy; } ;


 int AR71XX_GPIO_FUNCTION ;
 scalar_t__ AR71XX_SOC_AR9341 ;
 scalar_t__ AR71XX_SOC_AR9342 ;
 scalar_t__ AR71XX_SOC_AR9344 ;
 scalar_t__ AR71XX_SOC_QCA9533 ;
 scalar_t__ AR71XX_SOC_QCA9533_V2 ;
 scalar_t__ AR71XX_SOC_QCA9556 ;
 scalar_t__ AR71XX_SOC_QCA9558 ;
 int AR934X_GPIO_REG_FUNC ;
 int GPIO_SET_BITS (struct ar71xx_gpio_softc*,int ,int ) ;
 scalar_t__ ar71xx_soc ;

__attribute__((used)) static void
ar71xx_gpio_function_enable(struct ar71xx_gpio_softc *sc, uint32_t mask)
{




 if (ar71xx_soc == AR71XX_SOC_AR9341 ||
     ar71xx_soc == AR71XX_SOC_AR9342 ||
     ar71xx_soc == AR71XX_SOC_AR9344 ||
     ar71xx_soc == AR71XX_SOC_QCA9533 ||
     ar71xx_soc == AR71XX_SOC_QCA9533_V2 ||
     ar71xx_soc == AR71XX_SOC_QCA9556 ||
     ar71xx_soc == AR71XX_SOC_QCA9558)
  GPIO_SET_BITS(sc, AR934X_GPIO_REG_FUNC, mask);
 else
  GPIO_SET_BITS(sc, AR71XX_GPIO_FUNCTION, mask);
}

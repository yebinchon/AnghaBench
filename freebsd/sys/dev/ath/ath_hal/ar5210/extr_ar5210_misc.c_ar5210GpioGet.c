
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_GPIODI ;
 int AR_GPIOD_MASK ;
 int AR_NUM_GPIO ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5210GpioGet(struct ath_hal *ah, uint32_t gpio)
{
 if (gpio < AR_NUM_GPIO) {
  uint32_t val = OS_REG_READ(ah, AR_GPIODI);
  val = ((val & AR_GPIOD_MASK) >> gpio) & 0x1;
  return val;
 } else {
  return 0xffffffff;
 }
}

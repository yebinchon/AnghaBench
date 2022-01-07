
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_maskReg; } ;


 TYPE_1__* AH5212 (struct ath_hal*) ;
 int AR_GPIOCR ;
 int AR_GPIOCR_CR_A (int ) ;
 int AR_GPIOCR_CR_N (int ) ;
 int AR_GPIOCR_INT (int ) ;
 int AR_GPIOCR_INT_ENA ;
 int AR_GPIOCR_INT_MASK ;
 int AR_GPIOCR_INT_SEL ;
 int AR_GPIOCR_INT_SELH ;
 int AR_GPIOCR_INT_SELL ;
 int HAL_INT_GPIO ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5212SetInterrupts (struct ath_hal*,int) ;

void
ar5212GpioSetIntr(struct ath_hal *ah, u_int gpio, uint32_t ilevel)
{
 uint32_t val;


 val = OS_REG_READ(ah, AR_GPIOCR);
 val &= ~(AR_GPIOCR_CR_A(gpio) |
   AR_GPIOCR_INT_MASK | AR_GPIOCR_INT_ENA | AR_GPIOCR_INT_SEL);
 val |= AR_GPIOCR_CR_N(gpio) | AR_GPIOCR_INT(gpio) | AR_GPIOCR_INT_ENA;
 if (ilevel)
  val |= AR_GPIOCR_INT_SELH;
 else
  val |= AR_GPIOCR_INT_SELL;


 OS_REG_WRITE(ah, AR_GPIOCR, val);


 (void) ar5212SetInterrupts(ah, AH5212(ah)->ah_maskReg | HAL_INT_GPIO);
}

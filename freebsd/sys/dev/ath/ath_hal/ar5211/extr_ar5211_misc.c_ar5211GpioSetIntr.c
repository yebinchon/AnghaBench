
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_maskReg; } ;


 TYPE_1__* AH5211 (struct ath_hal*) ;
 int AR_GPIOCR ;
 int AR_GPIOCR_0_CR_A ;
 int AR_GPIOCR_INT_ENA ;
 int AR_GPIOCR_INT_SEL0 ;
 int AR_GPIOCR_INT_SELH ;
 int HAL_INT_GPIO ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5211SetInterrupts (struct ath_hal*,int) ;

void
ar5211GpioSetIntr(struct ath_hal *ah, u_int gpio, uint32_t ilevel)
{
 uint32_t val = OS_REG_READ(ah, AR_GPIOCR);


 val &= ~(AR_GPIOCR_INT_SEL0 | AR_GPIOCR_INT_SELH | AR_GPIOCR_INT_ENA |
   AR_GPIOCR_0_CR_A);

 val |= AR_GPIOCR_INT_SEL0 | AR_GPIOCR_INT_ENA;
 if (ilevel)
  val |= AR_GPIOCR_INT_SELH;


 OS_REG_WRITE(ah, AR_GPIOCR, val);


 ar5211SetInterrupts(ah, AH5211(ah)->ah_maskReg | HAL_INT_GPIO);
}

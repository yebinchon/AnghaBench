
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_GPIO_MUX_TYPE ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int AR_GPIOCR ;
 int AR_GPIOCR_0_CR_A ;
 int AR_GPIOCR_CR_SHIFT ;
 int AR_NUM_GPIO ;
 int HALASSERT (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

HAL_BOOL
ar5211GpioCfgOutput(struct ath_hal *ah, uint32_t gpio, HAL_GPIO_MUX_TYPE type)
{
 uint32_t reg;

 HALASSERT(gpio < AR_NUM_GPIO);

 reg = OS_REG_READ(ah, AR_GPIOCR);
 reg &= ~(AR_GPIOCR_0_CR_A << (gpio * AR_GPIOCR_CR_SHIFT));
 reg |= AR_GPIOCR_0_CR_A << (gpio * AR_GPIOCR_CR_SHIFT);

 OS_REG_WRITE(ah, AR_GPIOCR, reg);
 return AH_TRUE;
}

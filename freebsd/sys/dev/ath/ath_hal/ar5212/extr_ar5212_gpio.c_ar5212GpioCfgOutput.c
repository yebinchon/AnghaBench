
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_GPIO_MUX_TYPE ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int AR_GPIOCR ;
 int AR_GPIOCR_CR_A (scalar_t__) ;
 scalar_t__ AR_NUM_GPIO ;
 int HALASSERT (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

HAL_BOOL
ar5212GpioCfgOutput(struct ath_hal *ah, uint32_t gpio, HAL_GPIO_MUX_TYPE type)
{
 HALASSERT(gpio < AR_NUM_GPIO);





 OS_REG_WRITE(ah, AR_GPIOCR,
    OS_REG_READ(ah, AR_GPIOCR) | AR_GPIOCR_CR_A(gpio));

 return AH_TRUE;
}

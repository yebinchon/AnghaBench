
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int AR_GPIODO ;
 int AR_NUM_GPIO ;
 int HALASSERT (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

HAL_BOOL
ar5211GpioSet(struct ath_hal *ah, uint32_t gpio, uint32_t val)
{
 uint32_t reg;

 HALASSERT(gpio < AR_NUM_GPIO);

 reg = OS_REG_READ(ah, AR_GPIODO);
 reg &= ~(1 << gpio);
 reg |= (val&1) << gpio;

 OS_REG_WRITE(ah, AR_GPIODO, reg);
 return AH_TRUE;
}

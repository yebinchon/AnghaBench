
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halNumGpioPins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR9285_GPIO_IN_VAL ;
 int AR9287_GPIO_IN_VAL ;
 int AR928X_GPIO_IN_VAL ;
 scalar_t__ AR_GPIO_BIT (scalar_t__) ;
 int AR_GPIO_IN_OUT ;
 int AR_GPIO_IN_VAL ;
 scalar_t__ AR_SREV_KITE_10_OR_LATER (struct ath_hal*) ;
 scalar_t__ AR_SREV_KIWI_10_OR_LATER (struct ath_hal*) ;
 scalar_t__ AR_SREV_MERLIN_10_OR_LATER (struct ath_hal*) ;
 scalar_t__ MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5416GpioGet(struct ath_hal *ah, uint32_t gpio)
{
 uint32_t bits;

 if (gpio >= AH_PRIVATE(ah)->ah_caps.halNumGpioPins)
  return 0xffffffff;




 if (AR_SREV_KIWI_10_OR_LATER(ah))
  bits = MS(OS_REG_READ(ah, AR_GPIO_IN_OUT), AR9287_GPIO_IN_VAL);
 if (AR_SREV_KITE_10_OR_LATER(ah))
  bits = MS(OS_REG_READ(ah, AR_GPIO_IN_OUT), AR9285_GPIO_IN_VAL);
 else if (AR_SREV_MERLIN_10_OR_LATER(ah))
  bits = MS(OS_REG_READ(ah, AR_GPIO_IN_OUT), AR928X_GPIO_IN_VAL);
 else
  bits = MS(OS_REG_READ(ah, AR_GPIO_IN_OUT), AR_GPIO_IN_VAL);
 return ((bits & AR_GPIO_BIT(gpio)) != 0);
}

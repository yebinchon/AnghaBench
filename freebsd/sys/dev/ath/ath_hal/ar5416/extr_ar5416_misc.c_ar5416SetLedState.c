
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_LED_STATE ;


 int AR_MAC_LED ;
 int AR_MAC_LED_ASSOC ;



 int AR_MAC_LED_MODE ;
 int const AR_MAC_LED_MODE_PROP ;
 scalar_t__ AR_SREV_HOWL (struct ath_hal*) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int const) ;

void
ar5416SetLedState(struct ath_hal *ah, HAL_LED_STATE state)
{
 static const uint32_t ledbits[8] = {
  129,
  128,
  128,
  130,
  130,
  129,
  129,
  129,
 };

 if (AR_SREV_HOWL(ah))
  return;




 OS_REG_RMW_FIELD(ah, AR_MAC_LED,
     AR_MAC_LED_ASSOC, ledbits[state & 0x7]);
 OS_REG_RMW_FIELD(ah, AR_MAC_LED, AR_MAC_LED_MODE,
     AR_MAC_LED_MODE_PROP);
}

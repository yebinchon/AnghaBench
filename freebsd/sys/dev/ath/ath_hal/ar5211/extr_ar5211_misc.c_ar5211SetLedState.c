
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_LED_STATE ;


 int AR_PCICFG ;
 int const AR_PCICFG_LEDCTL ;



 int const AR_PCICFG_LEDMODE ;


 int const OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int const) ;

void
ar5211SetLedState(struct ath_hal *ah, HAL_LED_STATE state)
{
 static const uint32_t ledbits[8] = {
  131|129,
  130|129,
  130|129,
  132|129,
  132|129,
  131|128,
  131|128,
  131|128,
 };
 OS_REG_WRITE(ah, AR_PCICFG,
  (OS_REG_READ(ah, AR_PCICFG) &~
   (AR_PCICFG_LEDCTL | AR_PCICFG_LEDMODE))
  | ledbits[state & 0x7]
 );
}

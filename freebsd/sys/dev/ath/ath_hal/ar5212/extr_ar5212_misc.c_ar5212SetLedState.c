
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_LED_STATE ;


 int AR_PCICFG ;
 int AR_PCICFG_LEDCTL ;



 int AR_PCICFG_LEDMODE ;
 int const AR_PCICFG_LEDMODE_NETON ;
 int const AR_PCICFG_LEDMODE_POWON ;
 scalar_t__ IS_2417 (struct ath_hal*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int const,int) ;

void
ar5212SetLedState(struct ath_hal *ah, HAL_LED_STATE state)
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
 uint32_t bits;

 bits = OS_REG_READ(ah, AR_PCICFG);
 if (IS_2417(ah)) {







  bits = (bits &~ AR_PCICFG_LEDMODE)
       | SM(AR_PCICFG_LEDMODE_POWON, AR_PCICFG_LEDMODE)



       | 0x08000000;
 }
 bits = (bits &~ AR_PCICFG_LEDCTL)
      | SM(ledbits[state & 0x7], AR_PCICFG_LEDCTL);
 OS_REG_WRITE(ah, AR_PCICFG, bits);
}

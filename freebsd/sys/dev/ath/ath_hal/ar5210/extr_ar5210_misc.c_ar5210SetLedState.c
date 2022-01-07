
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_LED_STATE ;


 int AR_PCICFG ;
 int AR_PCICFG_LED_ACT ;
 int AR_PCICFG_LED_PEND ;


 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5210SetLedState(struct ath_hal *ah, HAL_LED_STATE state)
{
 uint32_t val;

 val = OS_REG_READ(ah, AR_PCICFG);
 switch (state) {
 case 129:
  val &= ~(AR_PCICFG_LED_PEND | AR_PCICFG_LED_ACT);
  break;
 case 128:

  val &= ~AR_PCICFG_LED_PEND;
  val |= AR_PCICFG_LED_ACT;
  break;
 default:
  val |= AR_PCICFG_LED_PEND;
  val &= ~AR_PCICFG_LED_ACT;
  break;
 }
 OS_REG_WRITE(ah, AR_PCICFG, val);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_RC ;
 int AR_RC_AHB ;
 int AR_RC_HOSTIF ;
 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_RESET ;
 int AR_RTC_RESET_EN ;
 int AR_SREV_HOWL (struct ath_hal*) ;
 int AR_SREV_OWL (struct ath_hal*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PWR_SAV ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar5416SetPowerModeSleep(struct ath_hal *ah, int setChip)
{
 OS_REG_SET_BIT(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);
 if (setChip) {

  OS_REG_CLR_BIT(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN);
  if (! AR_SREV_HOWL(ah))
   OS_REG_WRITE(ah, AR_RC, AR_RC_AHB|AR_RC_HOSTIF);

  if (! AR_SREV_OWL(ah))
   OS_REG_CLR_BIT(ah, AR_RTC_RESET, AR_RTC_RESET_EN);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int AH_FALSE ;
 int AR_DIAG_RX_ABORT ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int AR_PCU_MISC_MODE2 ;
 int AR_PCU_MISC_MODE2_ADHOC_MCAST_KEYID_ENABLE ;
 int AR_PCU_MISC_MODE2_HWWAR1 ;
 int AR_PCU_MISC_MODE2_HWWAR2 ;
 int AR_SREV_5416_V20_OR_LATER (struct ath_hal*) ;
 int AR_SREV_9271 (struct ath_hal*) ;
 scalar_t__ AR_SREV_HOWL (struct ath_hal*) ;
 scalar_t__ AR_SREV_KIWI_10_OR_LATER (struct ath_hal*) ;
 scalar_t__ AR_SREV_MERLIN (struct ath_hal*) ;
 scalar_t__ AR_SREV_MERLIN_10_OR_LATER (struct ath_hal*) ;
 scalar_t__ AR_SREV_SOWL (struct ath_hal*) ;
 int OS_REG_READ (struct ath_hal*,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int,int) ;
 int ar5416SetRifsDelay (struct ath_hal*,struct ieee80211_channel const*,int ) ;

__attribute__((used)) static void
ar5416OverrideIni(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint32_t val;






 OS_REG_SET_BIT(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));

 if (AR_SREV_MERLIN_10_OR_LATER(ah)) {
  val = OS_REG_READ(ah, AR_PCU_MISC_MODE2);
  val &= (~AR_PCU_MISC_MODE2_ADHOC_MCAST_KEYID_ENABLE);
  if (!AR_SREV_9271(ah))
   val &= ~AR_PCU_MISC_MODE2_HWWAR1;

  if (AR_SREV_KIWI_10_OR_LATER(ah))
   val = val & (~AR_PCU_MISC_MODE2_HWWAR2);

  OS_REG_WRITE(ah, AR_PCU_MISC_MODE2, val);
 }





 if (AR_SREV_HOWL(ah) || AR_SREV_SOWL(ah))
  (void) ar5416SetRifsDelay(ah, chan, AH_FALSE);

        if (!AR_SREV_5416_V20_OR_LATER(ah) || AR_SREV_MERLIN(ah))
  return;





 OS_REG_WRITE(ah, 0x9800 + (651 << 2), 0x11);
}

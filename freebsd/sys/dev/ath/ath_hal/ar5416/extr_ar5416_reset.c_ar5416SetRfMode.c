
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 struct ieee80211_channel const* AH_NULL ;
 int AR_PHY_MODE ;
 int AR_PHY_MODE_DYNAMIC ;
 int AR_PHY_MODE_DYN_CCK_DISABLE ;
 int AR_PHY_MODE_OFDM ;
 int AR_PHY_MODE_RF2GHZ ;
 int AR_PHY_MODE_RF5GHZ ;
 int AR_SREV_MERLIN_10_OR_LATER (struct ath_hal*) ;
 scalar_t__ AR_SREV_MERLIN_20 (struct ath_hal*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_CCK (struct ieee80211_channel const*) ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,struct ieee80211_channel const*) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar5416SetRfMode(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint32_t rfMode;

 if (chan == AH_NULL)
  return;


 rfMode = IEEE80211_IS_CHAN_CCK(chan) ?
     AR_PHY_MODE_DYNAMIC : AR_PHY_MODE_OFDM;

 if (AR_SREV_MERLIN_20(ah) && IS_5GHZ_FAST_CLOCK_EN(ah, chan)) {

  rfMode |= AR_PHY_MODE_DYNAMIC
         | AR_PHY_MODE_DYN_CCK_DISABLE;
 } else if (!AR_SREV_MERLIN_10_OR_LATER(ah)) {
  rfMode |= IEEE80211_IS_CHAN_5GHZ(chan) ?
   AR_PHY_MODE_RF5GHZ : AR_PHY_MODE_RF2GHZ;
 }

 OS_REG_WRITE(ah, AR_PHY_MODE, rfMode);
}

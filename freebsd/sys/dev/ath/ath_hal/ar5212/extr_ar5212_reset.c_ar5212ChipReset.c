
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int ic_freq; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_MARK_CHIPRESET ;
 struct ieee80211_channel const* AH_NULL ;
 int AH_TRUE ;
 int AR_PHY_FC_TURBO_MODE ;
 int AR_PHY_FC_TURBO_SHORT ;
 int AR_PHY_MODE ;
 int AR_PHY_MODE_AR5111 ;
 int AR_PHY_MODE_AR5112 ;
 int AR_PHY_MODE_CCK ;
 int AR_PHY_MODE_DYNAMIC ;
 int AR_PHY_MODE_HALF ;
 int AR_PHY_MODE_OFDM ;
 int AR_PHY_MODE_QUARTER ;
 int AR_PHY_MODE_RF2GHZ ;
 int AR_PHY_MODE_RF5GHZ ;
 int AR_PHY_PLL_CTL ;
 int AR_PHY_PLL_CTL_40 ;
 int AR_PHY_PLL_CTL_40_5112 ;
 int AR_PHY_PLL_CTL_40_5413 ;
 int AR_PHY_PLL_CTL_44 ;
 int AR_PHY_PLL_CTL_44_5112 ;
 int AR_PHY_PLL_CTL_HALF ;
 int AR_PHY_PLL_CTL_QUARTER ;
 int AR_PHY_TURBO ;
 int AR_RC_BB ;
 int AR_RC_MAC ;
 int AR_RC_PCI ;
 int HAL_PM_AWAKE ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_CCK (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_G (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_OFDM (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_TURBO (struct ieee80211_channel const*) ;
 scalar_t__ IS_5413 (struct ath_hal*) ;
 scalar_t__ IS_RAD5111 (struct ath_hal*) ;
 int OS_DELAY (int ) ;
 int OS_MARK (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int PLL_SETTLE_DELAY ;
 int ar5212SetPowerMode (struct ath_hal*,int ,int ) ;
 int ar5212SetResetReg (struct ath_hal*,int) ;

HAL_BOOL
ar5212ChipReset(struct ath_hal *ah, const struct ieee80211_channel *chan)
{

 OS_MARK(ah, AH_MARK_CHIPRESET, chan ? chan->ic_freq : 0);





 if (!ar5212SetResetReg(ah, AR_RC_MAC | AR_RC_BB | AR_RC_PCI))
  return AH_FALSE;


 if (!ar5212SetPowerMode(ah, HAL_PM_AWAKE, AH_TRUE))
  return AH_FALSE;


 if (!ar5212SetResetReg(ah, 0))
  return AH_FALSE;
 if (chan != AH_NULL) {
  uint32_t rfMode, phyPLL = 0, curPhyPLL, turbo;

  if (IS_5413(ah)) {
   rfMode = AR_PHY_MODE_AR5112;
   if (IEEE80211_IS_CHAN_HALF(chan))
    rfMode |= AR_PHY_MODE_HALF;
   else if (IEEE80211_IS_CHAN_QUARTER(chan))
    rfMode |= AR_PHY_MODE_QUARTER;

   if (IEEE80211_IS_CHAN_CCK(chan))
    phyPLL = AR_PHY_PLL_CTL_44_5112;
   else
    phyPLL = AR_PHY_PLL_CTL_40_5413;
  } else if (IS_RAD5111(ah)) {
   rfMode = AR_PHY_MODE_AR5111;
   if (IEEE80211_IS_CHAN_CCK(chan))
    phyPLL = AR_PHY_PLL_CTL_44;
   else
    phyPLL = AR_PHY_PLL_CTL_40;
   if (IEEE80211_IS_CHAN_HALF(chan))
    phyPLL = AR_PHY_PLL_CTL_HALF;
   else if (IEEE80211_IS_CHAN_QUARTER(chan))
    phyPLL = AR_PHY_PLL_CTL_QUARTER;
  } else {
   rfMode = AR_PHY_MODE_AR5112;
   if (IEEE80211_IS_CHAN_CCK(chan))
    phyPLL = AR_PHY_PLL_CTL_44_5112;
   else
    phyPLL = AR_PHY_PLL_CTL_40_5112;
   if (IEEE80211_IS_CHAN_HALF(chan))
    phyPLL |= AR_PHY_PLL_CTL_HALF;
   else if (IEEE80211_IS_CHAN_QUARTER(chan))
    phyPLL |= AR_PHY_PLL_CTL_QUARTER;
  }
  if (IEEE80211_IS_CHAN_G(chan))
   rfMode |= AR_PHY_MODE_DYNAMIC;
  else if (IEEE80211_IS_CHAN_OFDM(chan))
   rfMode |= AR_PHY_MODE_OFDM;
  else
   rfMode |= AR_PHY_MODE_CCK;
  if (IEEE80211_IS_CHAN_5GHZ(chan))
   rfMode |= AR_PHY_MODE_RF5GHZ;
  else
   rfMode |= AR_PHY_MODE_RF2GHZ;
  turbo = IEEE80211_IS_CHAN_TURBO(chan) ?
   (AR_PHY_FC_TURBO_MODE | AR_PHY_FC_TURBO_SHORT) : 0;
  curPhyPLL = OS_REG_READ(ah, AR_PHY_PLL_CTL);







  if (IEEE80211_IS_CHAN_CCK(chan)) {
   OS_REG_WRITE(ah, AR_PHY_TURBO, turbo);
   OS_REG_WRITE(ah, AR_PHY_MODE, rfMode);
   if (curPhyPLL != phyPLL) {
    OS_REG_WRITE(ah, AR_PHY_PLL_CTL, phyPLL);

    OS_DELAY(PLL_SETTLE_DELAY);
   }
  } else {
   if (curPhyPLL != phyPLL) {
    OS_REG_WRITE(ah, AR_PHY_PLL_CTL, phyPLL);

    OS_DELAY(PLL_SETTLE_DELAY);
   }
   OS_REG_WRITE(ah, AR_PHY_TURBO, turbo);
   OS_REG_WRITE(ah, AR_PHY_MODE, rfMode);
  }
 }
 return AH_TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ht_extprotspacing; } ;
typedef int HAL_HT_MACMODE ;


 int AR_CST ;
 int AR_CST_TIMEOUT_LIMIT_S ;
 int AR_GTTM ;
 int AR_GTTM_CST_USEC ;
 int AR_GTXTO ;
 int AR_GTXTO_TIMEOUT_LIMIT_S ;
 int AR_PHY_FC_DYN2040_EN ;
 int AR_PHY_FC_DYN2040_EXT_CH ;
 int AR_PHY_FC_DYN2040_PRI_CH ;
 int AR_PHY_FC_ENABLE_DAC_FIFO ;
 int AR_PHY_FC_HT_EN ;
 int AR_PHY_FC_SHORT_GI_40 ;
 int AR_PHY_FC_SINGLE_HT_LTF1 ;
 int AR_PHY_FC_WALSH ;
 int AR_PHY_TURBO ;
 scalar_t__ AR_SREV_KITE_10_OR_LATER (struct ath_hal*) ;
 scalar_t__ HAL_HT_EXTPROTSPACING_25 ;
 int HAL_HT_MACMODE_20 ;
 int HAL_HT_MACMODE_2040 ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40U (struct ieee80211_channel const*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5416Set11nMac2040 (struct ath_hal*,int ) ;
 TYPE_1__* ht ;

__attribute__((used)) static void
ar5416Set11nRegs(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint32_t phymode;
 uint32_t enableDacFifo = 0;
 HAL_HT_MACMODE macmode;

 if (AR_SREV_KITE_10_OR_LATER(ah))
  enableDacFifo = (OS_REG_READ(ah, AR_PHY_TURBO) & AR_PHY_FC_ENABLE_DAC_FIFO);


 phymode = AR_PHY_FC_HT_EN | AR_PHY_FC_SHORT_GI_40
  | AR_PHY_FC_SINGLE_HT_LTF1 | AR_PHY_FC_WALSH | enableDacFifo;


 if (IEEE80211_IS_CHAN_HT40(chan)) {
  phymode |= AR_PHY_FC_DYN2040_EN;


  if (IEEE80211_IS_CHAN_HT40U(chan))
   phymode |= AR_PHY_FC_DYN2040_PRI_CH;





  macmode = HAL_HT_MACMODE_2040;
 } else
  macmode = HAL_HT_MACMODE_20;
 OS_REG_WRITE(ah, AR_PHY_TURBO, phymode);


 ar5416Set11nMac2040(ah, macmode);



 OS_REG_WRITE(ah, AR_GTXTO, 25 << AR_GTXTO_TIMEOUT_LIMIT_S) ;


 OS_REG_SET_BIT(ah, AR_GTTM, AR_GTTM_CST_USEC);
 OS_REG_WRITE(ah, AR_CST, 0xF << AR_CST_TIMEOUT_LIMIT_S);
}

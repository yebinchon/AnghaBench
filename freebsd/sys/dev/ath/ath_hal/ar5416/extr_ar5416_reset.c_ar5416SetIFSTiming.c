
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int AR5416_HALF_RATE_USEC_40 ;
 int AR5416_HALF_RATE_USEC_44 ;
 int AR5416_IFS_EIFS_HALF_RATE_40 ;
 int AR5416_IFS_EIFS_HALF_RATE_44 ;
 int AR5416_IFS_EIFS_QUARTER_RATE_40 ;
 int AR5416_IFS_EIFS_QUARTER_RATE_44 ;
 int AR5416_IFS_SLOT_HALF_RATE_40 ;
 int AR5416_IFS_SLOT_HALF_RATE_44 ;
 int AR5416_IFS_SLOT_QUARTER_RATE_40 ;
 int AR5416_IFS_SLOT_QUARTER_RATE_44 ;
 int AR5416_INIT_USEC_40 ;
 int AR5416_INIT_USEC_44 ;
 int AR5416_QUARTER_RATE_USEC_40 ;
 int AR5416_QUARTER_RATE_USEC_44 ;
 int AR5416_RX_NON_FULL_RATE_LATENCY ;
 int AR5416_TX_HALF_RATE_LATENCY ;
 int AR5416_TX_QUARTER_RATE_LATENCY ;
 int AR5416_USEC_RX_LAT_S ;
 int AR5416_USEC_TX_LAT_S ;
 int AR_D_GBL_IFS_EIFS ;
 int AR_D_GBL_IFS_MISC ;
 int AR_D_GBL_IFS_MISC_USEC_DURATION ;
 int AR_D_GBL_IFS_SLOT ;
 int AR_USEC ;
 int AR_USEC_USEC32 ;
 int HALASSERT (int) ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel const*) ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,struct ieee80211_channel const*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar5416SetIFSTiming(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint32_t txLat, rxLat, usec, slot, refClock, eifs, init_usec;
 int clk_44 = 0;

 HALASSERT(IEEE80211_IS_CHAN_HALF(chan) ||
     IEEE80211_IS_CHAN_QUARTER(chan));


 if (IEEE80211_IS_CHAN_2GHZ(chan))
  clk_44 = 1;
 else if (IEEE80211_IS_CHAN_5GHZ(chan) &&
     IS_5GHZ_FAST_CLOCK_EN(ah, chan))
  clk_44 = 1;





 refClock = OS_REG_READ(ah, AR_USEC) & AR_USEC_USEC32;





 if (IEEE80211_IS_CHAN_HALF(chan)) {
  if (clk_44) {
   slot = AR5416_IFS_SLOT_HALF_RATE_44;
   rxLat = AR5416_RX_NON_FULL_RATE_LATENCY <<
       AR5416_USEC_RX_LAT_S;
   txLat = AR5416_TX_HALF_RATE_LATENCY <<
       AR5416_USEC_TX_LAT_S;
   usec = AR5416_HALF_RATE_USEC_44;
   eifs = AR5416_IFS_EIFS_HALF_RATE_44;
   init_usec = AR5416_INIT_USEC_44 >> 1;
  } else {
   slot = AR5416_IFS_SLOT_HALF_RATE_40;
   rxLat = AR5416_RX_NON_FULL_RATE_LATENCY <<
       AR5416_USEC_RX_LAT_S;
   txLat = AR5416_TX_HALF_RATE_LATENCY <<
       AR5416_USEC_TX_LAT_S;
   usec = AR5416_HALF_RATE_USEC_40;
   eifs = AR5416_IFS_EIFS_HALF_RATE_40;
   init_usec = AR5416_INIT_USEC_40 >> 1;
  }
 } else {
  if (clk_44) {
   slot = AR5416_IFS_SLOT_QUARTER_RATE_44;
   rxLat = AR5416_RX_NON_FULL_RATE_LATENCY <<
       AR5416_USEC_RX_LAT_S;
   txLat = AR5416_TX_QUARTER_RATE_LATENCY <<
       AR5416_USEC_TX_LAT_S;
   usec = AR5416_QUARTER_RATE_USEC_44;
   eifs = AR5416_IFS_EIFS_QUARTER_RATE_44;
   init_usec = AR5416_INIT_USEC_44 >> 2;
  } else {
   slot = AR5416_IFS_SLOT_QUARTER_RATE_40;
   rxLat = AR5416_RX_NON_FULL_RATE_LATENCY <<
       AR5416_USEC_RX_LAT_S;
   txLat = AR5416_TX_QUARTER_RATE_LATENCY <<
       AR5416_USEC_TX_LAT_S;
   usec = AR5416_QUARTER_RATE_USEC_40;
   eifs = AR5416_IFS_EIFS_QUARTER_RATE_40;
   init_usec = AR5416_INIT_USEC_40 >> 2;
  }
 }


 OS_REG_WRITE(ah, AR_USEC, (usec | refClock | txLat | rxLat));
 OS_REG_WRITE(ah, AR_D_GBL_IFS_SLOT, slot);
 OS_REG_WRITE(ah, AR_D_GBL_IFS_EIFS, eifs);
 OS_REG_RMW_FIELD(ah, AR_D_GBL_IFS_MISC,
     AR_D_GBL_IFS_MISC_USEC_DURATION, init_usec);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int AR5212_USEC_RX_LAT_S ;
 int AR5212_USEC_TX_LAT_S ;
 int AR_D_GBL_IFS_EIFS ;
 int AR_D_GBL_IFS_MISC ;
 int AR_D_GBL_IFS_MISC_USEC_DURATION ;
 int AR_D_GBL_IFS_SLOT ;
 int AR_USEC ;
 int AR_USEC_USEC32 ;
 int HALASSERT (int) ;
 int HALF_RATE_USEC ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel const*) ;
 int IFS_EIFS_HALF_RATE ;
 int IFS_EIFS_QUARTER_RATE ;
 int IFS_SLOT_HALF_RATE ;
 int IFS_SLOT_QUARTER_RATE ;
 int INIT_USEC ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int QUARTER_RATE_USEC ;
 int RX_NON_FULL_RATE_LATENCY ;
 int TX_HALF_RATE_LATENCY ;
 int TX_QUARTER_RATE_LATENCY ;

void
ar5212SetIFSTiming(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint32_t txLat, rxLat, usec, slot, refClock, eifs, init_usec;

 HALASSERT(IEEE80211_IS_CHAN_HALF(chan) ||
    IEEE80211_IS_CHAN_QUARTER(chan));

 refClock = OS_REG_READ(ah, AR_USEC) & AR_USEC_USEC32;
 if (IEEE80211_IS_CHAN_HALF(chan)) {
  slot = IFS_SLOT_HALF_RATE;
  rxLat = RX_NON_FULL_RATE_LATENCY << AR5212_USEC_RX_LAT_S;
  txLat = TX_HALF_RATE_LATENCY << AR5212_USEC_TX_LAT_S;
  usec = HALF_RATE_USEC;
  eifs = IFS_EIFS_HALF_RATE;
  init_usec = INIT_USEC >> 1;
 } else {
  slot = IFS_SLOT_QUARTER_RATE;
  rxLat = RX_NON_FULL_RATE_LATENCY << AR5212_USEC_RX_LAT_S;
  txLat = TX_QUARTER_RATE_LATENCY << AR5212_USEC_TX_LAT_S;
  usec = QUARTER_RATE_USEC;
  eifs = IFS_EIFS_QUARTER_RATE;
  init_usec = INIT_USEC >> 2;
 }

 OS_REG_WRITE(ah, AR_USEC, (usec | refClock | txLat | rxLat));
 OS_REG_WRITE(ah, AR_D_GBL_IFS_SLOT, slot);
 OS_REG_WRITE(ah, AR_D_GBL_IFS_EIFS, eifs);
 OS_REG_RMW_FIELD(ah, AR_D_GBL_IFS_MISC,
    AR_D_GBL_IFS_MISC_USEC_DURATION, init_usec);
}

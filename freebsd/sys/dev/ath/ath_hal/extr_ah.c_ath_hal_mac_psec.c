
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef unsigned long long u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ah_curchan; } ;


 struct ieee80211_channel const* AH_NULL ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 unsigned long long CLOCK_FAST_RATE_5GHZ_OFDM ;
 unsigned long long* CLOCK_RATE ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel const*) ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,struct ieee80211_channel const*) ;
 size_t WIRELESS_MODE_11b ;
 size_t ath_hal_chan2wmode (struct ath_hal*,struct ieee80211_channel const*) ;

uint64_t
ath_hal_mac_psec(struct ath_hal *ah, u_int clks)
{
 const struct ieee80211_channel *c = AH_PRIVATE(ah)->ah_curchan;
 uint64_t psec;



 if (c != AH_NULL && IS_5GHZ_FAST_CLOCK_EN(ah, c)) {
  psec = (clks * 1000000ULL) / CLOCK_FAST_RATE_5GHZ_OFDM;
  if (IEEE80211_IS_CHAN_HT40(c))
   psec >>= 1;
 } else if (c != AH_NULL) {
  psec = (clks * 1000000ULL) / CLOCK_RATE[ath_hal_chan2wmode(ah, c)];
  if (IEEE80211_IS_CHAN_HT40(c))
   psec >>= 1;
 } else
  psec = (clks * 1000000ULL) / CLOCK_RATE[WIRELESS_MODE_11b];
 return psec;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ah_curchan; } ;


 struct ieee80211_channel const* AH_NULL ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int CLOCK_FAST_RATE_5GHZ_OFDM ;
 int* CLOCK_RATE ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel const*) ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,struct ieee80211_channel const*) ;
 size_t WIRELESS_MODE_11b ;
 size_t ath_hal_chan2wmode (struct ath_hal*,struct ieee80211_channel const*) ;

u_int
ath_hal_mac_clks(struct ath_hal *ah, u_int usecs)
{
 const struct ieee80211_channel *c = AH_PRIVATE(ah)->ah_curchan;
 u_int clks;



 if (c != AH_NULL && IS_5GHZ_FAST_CLOCK_EN(ah, c)) {
  clks = usecs * CLOCK_FAST_RATE_5GHZ_OFDM;
  if (IEEE80211_IS_CHAN_HT40(c))
   clks <<= 1;
 } else if (c != AH_NULL) {
  clks = usecs * CLOCK_RATE[ath_hal_chan2wmode(ah, c)];
  if (IEEE80211_IS_CHAN_HT40(c))
   clks <<= 1;
 } else
  clks = usecs * CLOCK_RATE[WIRELESS_MODE_11b];


 if (c != AH_NULL && IEEE80211_IS_CHAN_HALF(c))
  clks = clks / 2;
 else if (c != AH_NULL && IEEE80211_IS_CHAN_QUARTER(c))
  clks = clks / 4;

 return clks;
}

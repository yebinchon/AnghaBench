
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int HALASSERT (int ) ;
 int HAL_MODE_11A ;
 int HAL_MODE_11B ;
 int HAL_MODE_11G ;
 int HAL_MODE_11NA_HT20 ;
 int HAL_MODE_11NA_HT40MINUS ;
 int HAL_MODE_11NA_HT40PLUS ;
 int HAL_MODE_11NG_HT20 ;
 int HAL_MODE_11NG_HT40MINUS ;
 int HAL_MODE_11NG_HT40PLUS ;
 int HAL_MODE_TURBO ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_A (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_B (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_G (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT20 (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40D (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40U (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_TURBO (struct ieee80211_channel const*) ;

int
ath_hal_get_curmode(struct ath_hal *ah, const struct ieee80211_channel *chan)
{



 if (!chan)
  return HAL_MODE_11NG_HT20;

 if (IEEE80211_IS_CHAN_TURBO(chan))
  return HAL_MODE_TURBO;


 if (IEEE80211_IS_CHAN_5GHZ(chan) && IEEE80211_IS_CHAN_HT20(chan))
  return HAL_MODE_11NA_HT20;
 if (IEEE80211_IS_CHAN_5GHZ(chan) && IEEE80211_IS_CHAN_HT40U(chan))
  return HAL_MODE_11NA_HT40PLUS;
 if (IEEE80211_IS_CHAN_5GHZ(chan) && IEEE80211_IS_CHAN_HT40D(chan))
  return HAL_MODE_11NA_HT40MINUS;
 if (IEEE80211_IS_CHAN_A(chan))
  return HAL_MODE_11A;


 if (IEEE80211_IS_CHAN_2GHZ(chan) && IEEE80211_IS_CHAN_HT20(chan))
  return HAL_MODE_11NG_HT20;
 if (IEEE80211_IS_CHAN_2GHZ(chan) && IEEE80211_IS_CHAN_HT40U(chan))
  return HAL_MODE_11NG_HT40PLUS;
 if (IEEE80211_IS_CHAN_2GHZ(chan) && IEEE80211_IS_CHAN_HT40D(chan))
  return HAL_MODE_11NG_HT40MINUS;





 if (IEEE80211_IS_CHAN_G(chan))
  return HAL_MODE_11G;
 if (IEEE80211_IS_CHAN_B(chan))
  return HAL_MODE_11B;

 HALASSERT(0);
 return HAL_MODE_11NG_HT20;
}

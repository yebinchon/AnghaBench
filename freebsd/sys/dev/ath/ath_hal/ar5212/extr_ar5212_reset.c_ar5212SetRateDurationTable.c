
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int rateCount; TYPE_1__* info; } ;
struct TYPE_5__ {scalar_t__ phy; int shortPreamble; int controlRate; int rateCode; } ;
typedef TYPE_2__ HAL_RATE_TABLE ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_RATE_DURATION (int ) ;
 int HAL_MODE_11A_HALF_RATE ;
 int HAL_MODE_11A_QUARTER_RATE ;
 int HAL_MODE_11G ;
 int HAL_MODE_TURBO ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_TURBO (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_T_CCK ;
 int OS_REG_WRITE (struct ath_hal*,int,int ) ;
 int WLAN_CTRL_FRAME_SIZE ;
 TYPE_2__* ar5212GetRateTable (struct ath_hal*,int ) ;
 int ath_hal_computetxtime (struct ath_hal*,TYPE_2__ const*,int ,int ,int ,int ) ;

void
ar5212SetRateDurationTable(struct ath_hal *ah,
 const struct ieee80211_channel *chan)
{
 const HAL_RATE_TABLE *rt;
 int i;


 if (IEEE80211_IS_CHAN_HALF(chan)) {
  rt = ar5212GetRateTable(ah, HAL_MODE_11A_HALF_RATE);
 } else if (IEEE80211_IS_CHAN_QUARTER(chan)) {
  rt = ar5212GetRateTable(ah, HAL_MODE_11A_QUARTER_RATE);
 } else {
  rt = ar5212GetRateTable(ah,
   IEEE80211_IS_CHAN_TURBO(chan) ? HAL_MODE_TURBO : HAL_MODE_11G);
 }

 for (i = 0; i < rt->rateCount; ++i)
  OS_REG_WRITE(ah,
   AR_RATE_DURATION(rt->info[i].rateCode),
   ath_hal_computetxtime(ah, rt,
    WLAN_CTRL_FRAME_SIZE,
    rt->info[i].controlRate, AH_FALSE, AH_TRUE));
 if (!IEEE80211_IS_CHAN_TURBO(chan)) {

  rt = ar5212GetRateTable(ah, HAL_MODE_11G);
  for (i = 0; i < rt->rateCount; ++i) {
   uint32_t reg = AR_RATE_DURATION(rt->info[i].rateCode);

   if (rt->info[i].phy != IEEE80211_T_CCK)
    continue;

   OS_REG_WRITE(ah, reg,
    ath_hal_computetxtime(ah, rt,
     WLAN_CTRL_FRAME_SIZE,
     rt->info[i].controlRate, AH_FALSE,
     AH_TRUE));

   if (rt->info[i].shortPreamble) {
    reg += rt->info[i].shortPreamble << 2;
    OS_REG_WRITE(ah, reg,
     ath_hal_computetxtime(ah, rt,
      WLAN_CTRL_FRAME_SIZE,
      rt->info[i].controlRate,
      AH_TRUE, AH_TRUE));
   }
  }
 }
}

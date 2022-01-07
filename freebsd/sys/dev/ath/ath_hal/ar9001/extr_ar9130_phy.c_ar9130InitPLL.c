
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int AR_RTC_PLL_CONTROL ;
 int AR_RTC_SLEEP_CLK ;
 int AR_RTC_SLEEP_DERIVED_CLK ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 int OS_DELAY (int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int RTC_PLL_SETTLE_DELAY ;

void
ar9130InitPLL(struct ath_hal *ah, const struct ieee80211_channel *chan)
{

 uint32_t pll;




 if (chan && IEEE80211_IS_CHAN_5GHZ(chan))
  pll = 0x1450;
 else
  pll = 0x1458;

 OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, pll);
 OS_DELAY(RTC_PLL_SETTLE_DELAY);
 OS_REG_WRITE(ah, AR_RTC_SLEEP_CLK, AR_RTC_SLEEP_DERIVED_CLK);
}

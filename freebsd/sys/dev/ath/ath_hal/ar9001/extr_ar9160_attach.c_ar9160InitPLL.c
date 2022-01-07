
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 struct ieee80211_channel const* AH_NULL ;
 int AR_RTC_PLL_CONTROL ;
 int AR_RTC_SLEEP_CLK ;
 int AR_RTC_SLEEP_DERIVED_CLK ;
 int AR_RTC_SOWL_PLL_CLKSEL ;
 int AR_RTC_SOWL_PLL_DIV ;
 int AR_RTC_SOWL_PLL_REFDIV ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel const*) ;
 int OS_DELAY (int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int RTC_PLL_SETTLE_DELAY ;
 int SM (int,int ) ;

__attribute__((used)) static void
ar9160InitPLL(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint32_t pll = SM(0x5, AR_RTC_SOWL_PLL_REFDIV);
 if (chan != AH_NULL) {
  if (IEEE80211_IS_CHAN_HALF(chan))
   pll |= SM(0x1, AR_RTC_SOWL_PLL_CLKSEL);
  else if (IEEE80211_IS_CHAN_QUARTER(chan))
   pll |= SM(0x2, AR_RTC_SOWL_PLL_CLKSEL);

  if (IEEE80211_IS_CHAN_5GHZ(chan))
   pll |= SM(0x50, AR_RTC_SOWL_PLL_DIV);
  else
   pll |= SM(0x58, AR_RTC_SOWL_PLL_DIV);
 } else
  pll |= SM(0x58, AR_RTC_SOWL_PLL_DIV);

 OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, pll);
 OS_DELAY(RTC_PLL_SETTLE_DELAY);
 OS_REG_WRITE(ah, AR_RTC_SLEEP_CLK, AR_RTC_SLEEP_DERIVED_CLK);
}

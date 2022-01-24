#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ieee80211_channel const* AH_NULL ; 
 int /*<<< orphan*/  AR_RTC_PLL_CONTROL ; 
 int /*<<< orphan*/  AR_RTC_SLEEP_CLK ; 
 int /*<<< orphan*/  AR_RTC_SLEEP_DERIVED_CLK ; 
 int /*<<< orphan*/  AR_RTC_SOWL_PLL_CLKSEL ; 
 int /*<<< orphan*/  AR_RTC_SOWL_PLL_DIV ; 
 int /*<<< orphan*/  AR_RTC_SOWL_PLL_REFDIV ; 
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_PLL_SETTLE_DELAY ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC6(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	uint32_t pll = FUNC5(0x5, AR_RTC_SOWL_PLL_REFDIV);
	if (chan != AH_NULL) {
		if (FUNC1(chan))
			pll |= FUNC5(0x1, AR_RTC_SOWL_PLL_CLKSEL);
		else if (FUNC2(chan))
			pll |= FUNC5(0x2, AR_RTC_SOWL_PLL_CLKSEL);

		if (FUNC0(chan))
			pll |= FUNC5(0x50, AR_RTC_SOWL_PLL_DIV);
		else
			pll |= FUNC5(0x58, AR_RTC_SOWL_PLL_DIV);
	} else
		pll |= FUNC5(0x58, AR_RTC_SOWL_PLL_DIV);

	FUNC4(ah, AR_RTC_PLL_CONTROL, pll);
	FUNC3(RTC_PLL_SETTLE_DELAY);
	FUNC4(ah, AR_RTC_SLEEP_CLK, AR_RTC_SLEEP_DERIVED_CLK);
}
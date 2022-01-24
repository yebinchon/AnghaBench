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
typedef  int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ieee80211_channel const* AH_NULL ; 
 int /*<<< orphan*/  AR_RTC_PLL_CONTROL ; 
 int /*<<< orphan*/  AR_RTC_SLEEP_CLK ; 
 int AR_RTC_SLEEP_DERIVED_CLK ; 
 int /*<<< orphan*/  AR_RTC_SOWL_PLL_CLKSEL ; 
 int /*<<< orphan*/  AR_RTC_SOWL_PLL_DIV ; 
 int /*<<< orphan*/  AR_RTC_SOWL_PLL_REFDIV ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC5 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_PLL_SETTLE_DELAY ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 

void
FUNC9(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	uint32_t pll = FUNC8(0x5, AR_RTC_SOWL_PLL_REFDIV);

	if (FUNC1(ah) &&
	    chan != AH_NULL && FUNC2(chan)) {
		/*
		 * PLL WAR for Merlin 2.0/2.1
		 * When doing fast clock, set PLL to 0x142c
		 * Else, set PLL to 0x2850 to prevent reset-to-reset variation 
		 */
		pll = FUNC5(ah, chan) ? 0x142c : 0x2850;
		if (FUNC3(chan))
			pll |= FUNC8(0x1, AR_RTC_SOWL_PLL_CLKSEL);
		else if (FUNC4(chan))
			pll |= FUNC8(0x2, AR_RTC_SOWL_PLL_CLKSEL);
	} else if (FUNC0(ah)) {
		pll = FUNC8(0x5, AR_RTC_SOWL_PLL_REFDIV);
		if (chan != AH_NULL) {
			if (FUNC3(chan))
				pll |= FUNC8(0x1, AR_RTC_SOWL_PLL_CLKSEL);
			else if (FUNC4(chan))
				pll |= FUNC8(0x2, AR_RTC_SOWL_PLL_CLKSEL);
			if (FUNC2(chan))
				pll |= FUNC8(0x28, AR_RTC_SOWL_PLL_DIV);
			else
				pll |= FUNC8(0x2c, AR_RTC_SOWL_PLL_DIV);
		} else
			pll |= FUNC8(0x2c, AR_RTC_SOWL_PLL_DIV);
	}

	FUNC7(ah, AR_RTC_PLL_CONTROL, pll);
	FUNC6(RTC_PLL_SETTLE_DELAY);
	FUNC7(ah, AR_RTC_SLEEP_CLK, AR_RTC_SLEEP_DERIVED_CLK);
}
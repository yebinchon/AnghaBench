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
 int /*<<< orphan*/  AR_RTC_PLL_CONTROL ; 
 int /*<<< orphan*/  AR_RTC_SLEEP_CLK ; 
 int AR_RTC_SLEEP_DERIVED_CLK ; 
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_PLL_SETTLE_DELAY ; 

void
FUNC3(struct ath_hal *ah, const struct ieee80211_channel *chan)
{

	uint32_t pll;

	/*
	 * XXX TODO: support half/quarter rates
	 */
	if (chan && FUNC0(chan))
		pll = 0x1450;
	else
		pll = 0x1458;

	FUNC2(ah, AR_RTC_PLL_CONTROL, pll);
	FUNC1(RTC_PLL_SETTLE_DELAY);
	FUNC2(ah, AR_RTC_SLEEP_CLK, AR_RTC_SLEEP_DERIVED_CLK);
}
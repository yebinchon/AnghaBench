#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ah_curchan; } ;

/* Variables and functions */
 struct ieee80211_channel const* AH_NULL ; 
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int CLOCK_FAST_RATE_5GHZ_OFDM ; 
 int* CLOCK_RATE ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ath_hal*,struct ieee80211_channel const*) ; 
 size_t WIRELESS_MODE_11b ; 
 size_t FUNC5 (struct ath_hal*,struct ieee80211_channel const*) ; 

u_int
FUNC6(struct ath_hal *ah, u_int usecs)
{
	const struct ieee80211_channel *c = FUNC0(ah)->ah_curchan;
	u_int clks;

	/* NB: ah_curchan may be null when called attach time */
	/* XXX merlin and later specific workaround - 5ghz fast clock is 44 */
	if (c != AH_NULL && FUNC4(ah, c)) {
		clks = usecs * CLOCK_FAST_RATE_5GHZ_OFDM;
		if (FUNC2(c))
			clks <<= 1;
	} else if (c != AH_NULL) {
		clks = usecs * CLOCK_RATE[FUNC5(ah, c)];
		if (FUNC2(c))
			clks <<= 1;
	} else
		clks = usecs * CLOCK_RATE[WIRELESS_MODE_11b];

	/* Compensate for half/quarter rate */
	if (c != AH_NULL && FUNC1(c))
		clks = clks / 2;
	else if (c != AH_NULL && FUNC3(c))
		clks = clks / 4;

	return clks;
}
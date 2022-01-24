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
typedef  int uint64_t ;
typedef  unsigned long long u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ah_curchan; } ;

/* Variables and functions */
 struct ieee80211_channel const* AH_NULL ; 
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 unsigned long long CLOCK_FAST_RATE_5GHZ_OFDM ; 
 unsigned long long* CLOCK_RATE ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ath_hal*,struct ieee80211_channel const*) ; 
 size_t WIRELESS_MODE_11b ; 
 size_t FUNC3 (struct ath_hal*,struct ieee80211_channel const*) ; 

uint64_t
FUNC4(struct ath_hal *ah, u_int clks)
{
	const struct ieee80211_channel *c = FUNC0(ah)->ah_curchan;
	uint64_t psec;

	/* NB: ah_curchan may be null when called attach time */
	/* XXX merlin and later specific workaround - 5ghz fast clock is 44 */
	if (c != AH_NULL && FUNC2(ah, c)) {
		psec = (clks * 1000000ULL) / CLOCK_FAST_RATE_5GHZ_OFDM;
		if (FUNC1(c))
			psec >>= 1;
	} else if (c != AH_NULL) {
		psec = (clks * 1000000ULL) / CLOCK_RATE[FUNC3(ah, c)];
		if (FUNC1(c))
			psec >>= 1;
	} else
		psec = (clks * 1000000ULL) / CLOCK_RATE[WIRELESS_MODE_11b];
	return psec;
}
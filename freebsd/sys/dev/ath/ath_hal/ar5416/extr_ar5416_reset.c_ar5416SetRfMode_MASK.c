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
 int /*<<< orphan*/  AR_PHY_MODE ; 
 int AR_PHY_MODE_DYNAMIC ; 
 int AR_PHY_MODE_DYN_CCK_DISABLE ; 
 int AR_PHY_MODE_OFDM ; 
 int AR_PHY_MODE_RF2GHZ ; 
 int AR_PHY_MODE_RF5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	uint32_t rfMode;

	if (chan == AH_NULL)
		return;

	/* treat channel B as channel G , no  B mode suport in owl */
	rfMode = FUNC3(chan) ?
	    AR_PHY_MODE_DYNAMIC : AR_PHY_MODE_OFDM;

	if (FUNC1(ah) && FUNC4(ah, chan)) {
		/* phy mode bits for 5GHz channels require Fast Clock */
		rfMode |= AR_PHY_MODE_DYNAMIC
		       |  AR_PHY_MODE_DYN_CCK_DISABLE;
	} else if (!FUNC0(ah)) {
		rfMode |= FUNC2(chan) ?
			AR_PHY_MODE_RF5GHZ : AR_PHY_MODE_RF2GHZ;
	}

	FUNC5(ah, AR_PHY_MODE, rfMode);
}
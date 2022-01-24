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
 int AR5416_HALF_RATE_USEC_40 ; 
 int AR5416_HALF_RATE_USEC_44 ; 
 int AR5416_IFS_EIFS_HALF_RATE_40 ; 
 int AR5416_IFS_EIFS_HALF_RATE_44 ; 
 int AR5416_IFS_EIFS_QUARTER_RATE_40 ; 
 int AR5416_IFS_EIFS_QUARTER_RATE_44 ; 
 int AR5416_IFS_SLOT_HALF_RATE_40 ; 
 int AR5416_IFS_SLOT_HALF_RATE_44 ; 
 int AR5416_IFS_SLOT_QUARTER_RATE_40 ; 
 int AR5416_IFS_SLOT_QUARTER_RATE_44 ; 
 int AR5416_INIT_USEC_40 ; 
 int AR5416_INIT_USEC_44 ; 
 int AR5416_QUARTER_RATE_USEC_40 ; 
 int AR5416_QUARTER_RATE_USEC_44 ; 
 int AR5416_RX_NON_FULL_RATE_LATENCY ; 
 int AR5416_TX_HALF_RATE_LATENCY ; 
 int AR5416_TX_QUARTER_RATE_LATENCY ; 
 int AR5416_USEC_RX_LAT_S ; 
 int AR5416_USEC_TX_LAT_S ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_EIFS ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_MISC ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_MISC_USEC_DURATION ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_SLOT ; 
 int /*<<< orphan*/  AR_USEC ; 
 int AR_USEC_USEC32 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC5 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int FUNC6 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	uint32_t txLat, rxLat, usec, slot, refClock, eifs, init_usec;
	int clk_44 = 0;

	FUNC0(FUNC3(chan) ||
	    FUNC4(chan));

	/* 2GHz and 5GHz fast clock - 44MHz; else 40MHz */
	if (FUNC1(chan))
		clk_44 = 1;
	else if (FUNC2(chan) &&
	    FUNC5(ah, chan))
		clk_44 = 1;

	/* XXX does this need save/restoring for the 11n chips? */
	/*
	 * XXX TODO: should mask out the txlat/rxlat/usec values?
	 */
	refClock = FUNC6(ah, AR_USEC) & AR_USEC_USEC32;

	/*
	 * XXX This really should calculate things, not use
	 * hard coded values! Ew.
	 */
	if (FUNC3(chan)) {
		if (clk_44) {
			slot = AR5416_IFS_SLOT_HALF_RATE_44;
			rxLat = AR5416_RX_NON_FULL_RATE_LATENCY <<
			    AR5416_USEC_RX_LAT_S;
			txLat = AR5416_TX_HALF_RATE_LATENCY <<
			    AR5416_USEC_TX_LAT_S;
			usec = AR5416_HALF_RATE_USEC_44;
			eifs = AR5416_IFS_EIFS_HALF_RATE_44;
			init_usec = AR5416_INIT_USEC_44 >> 1;
		} else {
			slot = AR5416_IFS_SLOT_HALF_RATE_40;
			rxLat = AR5416_RX_NON_FULL_RATE_LATENCY <<
			    AR5416_USEC_RX_LAT_S;
			txLat = AR5416_TX_HALF_RATE_LATENCY <<
			    AR5416_USEC_TX_LAT_S;
			usec = AR5416_HALF_RATE_USEC_40;
			eifs = AR5416_IFS_EIFS_HALF_RATE_40;
			init_usec = AR5416_INIT_USEC_40 >> 1;
		}
	} else { /* quarter rate */
		if (clk_44) {
			slot = AR5416_IFS_SLOT_QUARTER_RATE_44;
			rxLat = AR5416_RX_NON_FULL_RATE_LATENCY <<
			    AR5416_USEC_RX_LAT_S;
			txLat = AR5416_TX_QUARTER_RATE_LATENCY <<
			    AR5416_USEC_TX_LAT_S;
			usec = AR5416_QUARTER_RATE_USEC_44;
			eifs = AR5416_IFS_EIFS_QUARTER_RATE_44;
			init_usec = AR5416_INIT_USEC_44 >> 2;
		} else {
			slot = AR5416_IFS_SLOT_QUARTER_RATE_40;
			rxLat = AR5416_RX_NON_FULL_RATE_LATENCY <<
			    AR5416_USEC_RX_LAT_S;
			txLat = AR5416_TX_QUARTER_RATE_LATENCY <<
			    AR5416_USEC_TX_LAT_S;
			usec = AR5416_QUARTER_RATE_USEC_40;
			eifs = AR5416_IFS_EIFS_QUARTER_RATE_40;
			init_usec = AR5416_INIT_USEC_40 >> 2;
		}
	}

	/* XXX verify these! */
	FUNC8(ah, AR_USEC, (usec | refClock | txLat | rxLat));
	FUNC8(ah, AR_D_GBL_IFS_SLOT, slot);
	FUNC8(ah, AR_D_GBL_IFS_EIFS, eifs);
	FUNC7(ah, AR_D_GBL_IFS_MISC,
	    AR_D_GBL_IFS_MISC_USEC_DURATION, init_usec);
}
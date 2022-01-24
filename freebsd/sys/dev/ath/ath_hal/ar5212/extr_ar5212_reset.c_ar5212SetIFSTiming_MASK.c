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
 int AR5212_USEC_RX_LAT_S ; 
 int AR5212_USEC_TX_LAT_S ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_EIFS ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_MISC ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_MISC_USEC_DURATION ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_SLOT ; 
 int /*<<< orphan*/  AR_USEC ; 
 int AR_USEC_USEC32 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HALF_RATE_USEC ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 int IFS_EIFS_HALF_RATE ; 
 int IFS_EIFS_QUARTER_RATE ; 
 int IFS_SLOT_HALF_RATE ; 
 int IFS_SLOT_QUARTER_RATE ; 
 int INIT_USEC ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int QUARTER_RATE_USEC ; 
 int RX_NON_FULL_RATE_LATENCY ; 
 int TX_HALF_RATE_LATENCY ; 
 int TX_QUARTER_RATE_LATENCY ; 

void 
FUNC6(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	uint32_t txLat, rxLat, usec, slot, refClock, eifs, init_usec;

	FUNC0(FUNC1(chan) ||
		  FUNC2(chan));

	refClock = FUNC3(ah, AR_USEC) & AR_USEC_USEC32;
	if (FUNC1(chan)) {
		slot = IFS_SLOT_HALF_RATE;
		rxLat = RX_NON_FULL_RATE_LATENCY << AR5212_USEC_RX_LAT_S;
		txLat = TX_HALF_RATE_LATENCY << AR5212_USEC_TX_LAT_S;
		usec = HALF_RATE_USEC;
		eifs = IFS_EIFS_HALF_RATE;
		init_usec = INIT_USEC >> 1;
	} else { /* quarter rate */
		slot = IFS_SLOT_QUARTER_RATE;
		rxLat = RX_NON_FULL_RATE_LATENCY << AR5212_USEC_RX_LAT_S;
		txLat = TX_QUARTER_RATE_LATENCY << AR5212_USEC_TX_LAT_S;
		usec = QUARTER_RATE_USEC;
		eifs = IFS_EIFS_QUARTER_RATE;
		init_usec = INIT_USEC >> 2;
	}

	FUNC5(ah, AR_USEC, (usec | refClock | txLat | rxLat));
	FUNC5(ah, AR_D_GBL_IFS_SLOT, slot);
	FUNC5(ah, AR_D_GBL_IFS_EIFS, eifs);
	FUNC4(ah, AR_D_GBL_IFS_MISC,
				AR_D_GBL_IFS_MISC_USEC_DURATION, init_usec);
}
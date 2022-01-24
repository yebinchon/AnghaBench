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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ieee80211_channel {size_t ic_ieee; } ;
struct ath_hal {int dummy; } ;
typedef  size_t int16_t ;
struct TYPE_2__ {struct ieee80211_channel const* ah_curchan; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_MARK_SETCHANNEL ; 
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AR_PHY_CCK_TX_CTRL ; 
 int AR_PHY_CCK_TX_CTRL_JAPAN ; 
 size_t CI_2GHZ_INDEX_CORRECTION ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int FUNC7 (size_t,int) ; 

__attribute__((used)) static HAL_BOOL
FUNC8(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
#define CI_2GHZ_INDEX_CORRECTION 19
	uint16_t freq = FUNC6(ah, chan);
	uint32_t refClk, reg32, data2111;
	int16_t chan5111, chanIEEE;

	/*
	 * Structure to hold 11b tuning information for 5111/2111
	 * 16 MHz mode, divider ratio = 198 = NP+S. N=16, S=4 or 6, P=12
	 */
	typedef struct {
		uint32_t	refClkSel;	/* reference clock, 1 for 16 MHz */
		uint32_t	channelSelect;	/* P[7:4]S[3:0] bits */
		uint16_t	channel5111;	/* 11a channel for 5111 */
	} CHAN_INFO_2GHZ;

	static const CHAN_INFO_2GHZ chan2GHzData[] = {
		{ 1, 0x46, 96  },	/* 2312 -19 */
		{ 1, 0x46, 97  },	/* 2317 -18 */
		{ 1, 0x46, 98  },	/* 2322 -17 */
		{ 1, 0x46, 99  },	/* 2327 -16 */
		{ 1, 0x46, 100 },	/* 2332 -15 */
		{ 1, 0x46, 101 },	/* 2337 -14 */
		{ 1, 0x46, 102 },	/* 2342 -13 */
		{ 1, 0x46, 103 },	/* 2347 -12 */
		{ 1, 0x46, 104 },	/* 2352 -11 */
		{ 1, 0x46, 105 },	/* 2357 -10 */
		{ 1, 0x46, 106 },	/* 2362  -9 */
		{ 1, 0x46, 107 },	/* 2367  -8 */
		{ 1, 0x46, 108 },	/* 2372  -7 */
		/* index -6 to 0 are pad to make this a nolookup table */
		{ 1, 0x46, 116 },	/*       -6 */
		{ 1, 0x46, 116 },	/*       -5 */
		{ 1, 0x46, 116 },	/*       -4 */
		{ 1, 0x46, 116 },	/*       -3 */
		{ 1, 0x46, 116 },	/*       -2 */
		{ 1, 0x46, 116 },	/*       -1 */
		{ 1, 0x46, 116 },	/*        0 */
		{ 1, 0x46, 116 },	/* 2412   1 */
		{ 1, 0x46, 117 },	/* 2417   2 */
		{ 1, 0x46, 118 },	/* 2422   3 */
		{ 1, 0x46, 119 },	/* 2427   4 */
		{ 1, 0x46, 120 },	/* 2432   5 */
		{ 1, 0x46, 121 },	/* 2437   6 */
		{ 1, 0x46, 122 },	/* 2442   7 */
		{ 1, 0x46, 123 },	/* 2447   8 */
		{ 1, 0x46, 124 },	/* 2452   9 */
		{ 1, 0x46, 125 },	/* 2457  10 */
		{ 1, 0x46, 126 },	/* 2462  11 */
		{ 1, 0x46, 127 },	/* 2467  12 */
		{ 1, 0x46, 128 },	/* 2472  13 */
		{ 1, 0x44, 124 },	/* 2484  14 */
		{ 1, 0x46, 136 },	/* 2512  15 */
		{ 1, 0x46, 140 },	/* 2532  16 */
		{ 1, 0x46, 144 },	/* 2552  17 */
		{ 1, 0x46, 148 },	/* 2572  18 */
		{ 1, 0x46, 152 },	/* 2592  19 */
		{ 1, 0x46, 156 },	/* 2612  20 */
		{ 1, 0x46, 160 },	/* 2632  21 */
		{ 1, 0x46, 164 },	/* 2652  22 */
		{ 1, 0x46, 168 },	/* 2672  23 */
		{ 1, 0x46, 172 },	/* 2692  24 */
		{ 1, 0x46, 176 },	/* 2712  25 */
		{ 1, 0x46, 180 } 	/* 2732  26 */
	};

	FUNC3(ah, AH_MARK_SETCHANNEL, freq);

	chanIEEE = chan->ic_ieee;
	if (FUNC2(chan)) {
		const CHAN_INFO_2GHZ* ci =
			&chan2GHzData[chanIEEE + CI_2GHZ_INDEX_CORRECTION];
		uint32_t txctl;

		data2111 = ((FUNC7(ci->channelSelect, 8) & 0xff)
				<< 5)
			 | (ci->refClkSel << 4);
		chan5111 = ci->channel5111;
		txctl = FUNC4(ah, AR_PHY_CCK_TX_CTRL);
		if (freq == 2484) {
			/* Enable channel spreading for channel 14 */
			FUNC5(ah, AR_PHY_CCK_TX_CTRL,
				txctl | AR_PHY_CCK_TX_CTRL_JAPAN);
		} else {
			FUNC5(ah, AR_PHY_CCK_TX_CTRL,
				txctl &~ AR_PHY_CCK_TX_CTRL_JAPAN);
		}
	} else {
		chan5111 = chanIEEE;	/* no conversion needed */
		data2111 = 0;
	}

	/* Rest of the code is common for 5 GHz and 2.4 GHz. */
	if (chan5111 >= 145 || (chan5111 & 0x1)) {
		reg32  = FUNC7(chan5111 - 24, 8) & 0xff;
		refClk = 1;
	} else {
		reg32  = FUNC7(((chan5111 - 24)/2), 8) & 0xff;
		refClk = 0;
	}

	reg32 = (reg32 << 2) | (refClk << 1) | (1 << 10) | 0x1;
	FUNC5(ah, FUNC1(0x27), ((data2111 & 0xff) << 8) | (reg32 & 0xff));
	reg32 >>= 8;
	FUNC5(ah, FUNC1(0x34), (data2111 & 0xff00) | (reg32 & 0xff));

	FUNC0(ah)->ah_curchan = chan;
	return AH_TRUE;
#undef CI_2GHZ_INDEX_CORRECTION
}
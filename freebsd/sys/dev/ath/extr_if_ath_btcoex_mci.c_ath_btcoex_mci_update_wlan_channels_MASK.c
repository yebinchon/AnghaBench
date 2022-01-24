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
struct ieee80211com {struct ieee80211_channel* ic_curchan; } ;
struct ieee80211_channel {scalar_t__ ic_freq; } ;
struct ath_softc {int /*<<< orphan*/  sc_ah; struct ieee80211com sc_ic; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_DEBUG_BTCOEX ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  HAL_MCI_STATE_SEND_WLAN_CHANNELS ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int*,scalar_t__) ; 
 scalar_t__ MCI_NUM_BT_CHANNELS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC6(struct ath_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211_channel *chan = ic->ic_curchan;
	uint32_t channel_info[4] =
	    { 0x00000000, 0xffffffff, 0xffffffff, 0x7fffffff };
	int32_t wl_chan, bt_chan, bt_start = 0, bt_end = 79;

	/* BT channel frequency is 2402 + k, k = 0 ~ 78 */
	if (FUNC1(chan)) {
		wl_chan = chan->ic_freq - 2402;
		if (FUNC3(chan)) {
			bt_start = wl_chan - 10;
			bt_end = wl_chan + 30;
		} else if (FUNC2(chan)) {
			bt_start = wl_chan - 30;
			bt_end = wl_chan + 10;
		} else {
			/* Assume 20MHz */
			bt_start = wl_chan - 10;
			bt_end = wl_chan + 10;
		}

		bt_start -= 7;
		bt_end += 7;

		if (bt_start < 0) {
			bt_start = 0;
		}
		if (bt_end > MCI_NUM_BT_CHANNELS) {
			bt_end = MCI_NUM_BT_CHANNELS;
		}
		FUNC0(sc, ATH_DEBUG_BTCOEX, "(MCI) WLAN use channel %d\n",
		    chan->ic_freq);
		FUNC0(sc, ATH_DEBUG_BTCOEX,
		    "(MCI) mask BT channel %d - %d\n", bt_start, bt_end);
		for (bt_chan = bt_start; bt_chan < bt_end; bt_chan++) {
			FUNC4(&channel_info[0], bt_chan);
		}
	} else {
		FUNC0(sc, ATH_DEBUG_BTCOEX,
		    "(MCI) WLAN not use any 2G channel, unmask all for BT\n");
	}
	FUNC5(sc->sc_ah, HAL_MCI_STATE_SEND_WLAN_CHANNELS,
	    &channel_info[0]);
}
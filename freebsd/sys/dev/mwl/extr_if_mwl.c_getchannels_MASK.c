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
typedef  int /*<<< orphan*/  uint8_t ;
struct mwl_softc {int /*<<< orphan*/  sc_mh; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  bands ;
typedef  int /*<<< orphan*/  MWL_HAL_CHANNELINFO ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CHAN_HTA ; 
 int /*<<< orphan*/  IEEE80211_CHAN_HTG ; 
 int /*<<< orphan*/  IEEE80211_MODE_11A ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int /*<<< orphan*/  IEEE80211_MODE_11NA ; 
 int /*<<< orphan*/  IEEE80211_MODE_11NG ; 
 int IEEE80211_MODE_BYTES ; 
 int /*<<< orphan*/  MWL_CH_20_MHz_WIDTH ; 
 int /*<<< orphan*/  MWL_CH_40_MHz_WIDTH ; 
 int /*<<< orphan*/  MWL_FREQ_BAND_2DOT4GHZ ; 
 int /*<<< orphan*/  MWL_FREQ_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mwl_softc *sc, int maxchans, int *nchans,
	struct ieee80211_channel chans[])
{
	const MWL_HAL_CHANNELINFO *ci;
	uint8_t bands[IEEE80211_MODE_BYTES];

	/*
	 * Use the channel info from the hal to craft the
	 * channel list.  Note that we pass back an unsorted
	 * list; the caller is required to sort it for us
	 * (if desired).
	 */
	*nchans = 0;
	if (FUNC3(sc->sc_mh,
	    MWL_FREQ_BAND_2DOT4GHZ, MWL_CH_20_MHz_WIDTH, &ci) == 0) {
		FUNC2(bands, 0, sizeof(bands));
		FUNC4(bands, IEEE80211_MODE_11B);
		FUNC4(bands, IEEE80211_MODE_11G);
		FUNC4(bands, IEEE80211_MODE_11NG);
		FUNC0(chans, maxchans, nchans, ci, bands);
	}
	if (FUNC3(sc->sc_mh,
	    MWL_FREQ_BAND_5GHZ, MWL_CH_20_MHz_WIDTH, &ci) == 0) {
		FUNC2(bands, 0, sizeof(bands));
		FUNC4(bands, IEEE80211_MODE_11A);
		FUNC4(bands, IEEE80211_MODE_11NA);
		FUNC0(chans, maxchans, nchans, ci, bands);
	}
	if (FUNC3(sc->sc_mh,
	    MWL_FREQ_BAND_2DOT4GHZ, MWL_CH_40_MHz_WIDTH, &ci) == 0)
		FUNC1(chans, maxchans, nchans, ci, IEEE80211_CHAN_HTG);
	if (FUNC3(sc->sc_mh,
	    MWL_FREQ_BAND_5GHZ, MWL_CH_40_MHz_WIDTH, &ci) == 0)
		FUNC1(chans, maxchans, nchans, ci, IEEE80211_CHAN_HTA);
}
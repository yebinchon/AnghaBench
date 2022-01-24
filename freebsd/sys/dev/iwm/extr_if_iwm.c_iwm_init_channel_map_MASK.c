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
typedef  int /*<<< orphan*/  uint8_t ;
struct iwm_softc {TYPE_1__* cfg; struct iwm_nvm_data* nvm_data; } ;
struct iwm_nvm_data {scalar_t__ sku_cap_band_52GHz_enable; } ;
struct ieee80211com {struct iwm_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  bands ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MODE_11A ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int IEEE80211_MODE_BYTES ; 
 scalar_t__ IWM_DEVICE_FAMILY_7000 ; 
 size_t IWM_NUM_2GHZ_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,struct ieee80211_channel*,int,int*,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iwm_nvm_channels ; 
 int /*<<< orphan*/  iwm_nvm_channels_8000 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic, int maxchans, int *nchans,
    struct ieee80211_channel chans[])
{
	struct iwm_softc *sc = ic->ic_softc;
	struct iwm_nvm_data *data = sc->nvm_data;
	uint8_t bands[IEEE80211_MODE_BYTES];
	size_t ch_num;

	FUNC2(bands, 0, sizeof(bands));
	/* 1-13: 11b/g channels. */
	FUNC4(bands, IEEE80211_MODE_11B);
	FUNC4(bands, IEEE80211_MODE_11G);
	FUNC1(sc, chans, maxchans, nchans, 0,
	    IWM_NUM_2GHZ_CHANNELS - 1, bands);

	/* 14: 11b channel only. */
	FUNC0(bands, IEEE80211_MODE_11G);
	FUNC1(sc, chans, maxchans, nchans,
	    IWM_NUM_2GHZ_CHANNELS - 1, IWM_NUM_2GHZ_CHANNELS, bands);

	if (data->sku_cap_band_52GHz_enable) {
		if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000)
			ch_num = FUNC3(iwm_nvm_channels);
		else
			ch_num = FUNC3(iwm_nvm_channels_8000);
		FUNC2(bands, 0, sizeof(bands));
		FUNC4(bands, IEEE80211_MODE_11A);
		FUNC1(sc, chans, maxchans, nchans,
		    IWM_NUM_2GHZ_CHANNELS, ch_num, bands);
	}
}
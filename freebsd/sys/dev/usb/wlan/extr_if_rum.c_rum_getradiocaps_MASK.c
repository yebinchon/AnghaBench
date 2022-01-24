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
struct rum_softc {scalar_t__ rf_rev; } ;
struct ieee80211com {struct rum_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  bands ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MODE_11A ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int IEEE80211_MODE_BYTES ; 
 scalar_t__ RT2573_RF_5225 ; 
 scalar_t__ RT2573_RF_5226 ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rum_chan_5ghz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
	struct rum_softc *sc = ic->ic_softc;
	uint8_t bands[IEEE80211_MODE_BYTES];

	FUNC2(bands, 0, sizeof(bands));
	FUNC4(bands, IEEE80211_MODE_11B);
	FUNC4(bands, IEEE80211_MODE_11G);
	FUNC1(chans, maxchans, nchans, bands, 0);

	if (sc->rf_rev == RT2573_RF_5225 || sc->rf_rev == RT2573_RF_5226) {
		FUNC4(bands, IEEE80211_MODE_11A);
		FUNC0(chans, maxchans, nchans,
		    rum_chan_5ghz, FUNC3(rum_chan_5ghz), bands, 0);
	}
}
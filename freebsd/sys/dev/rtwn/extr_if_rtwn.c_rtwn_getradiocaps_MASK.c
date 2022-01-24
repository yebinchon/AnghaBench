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
struct rtwn_softc {scalar_t__* chan_num_5ghz; int /*<<< orphan*/ * chan_list_5ghz; } ;
struct ieee80211com {int ic_htcaps; struct rtwn_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  bands ;

/* Variables and functions */
 int IEEE80211_HTCAP_CHWIDTH40 ; 
 int /*<<< orphan*/  IEEE80211_MODE_11A ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int /*<<< orphan*/  IEEE80211_MODE_11NA ; 
 int /*<<< orphan*/  IEEE80211_MODE_11NG ; 
 int IEEE80211_MODE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
	struct rtwn_softc *sc = ic->ic_softc;
	uint8_t bands[IEEE80211_MODE_BYTES];
	int i;

	FUNC2(bands, 0, sizeof(bands));
	FUNC4(bands, IEEE80211_MODE_11B);
	FUNC4(bands, IEEE80211_MODE_11G);
	FUNC4(bands, IEEE80211_MODE_11NG);
	FUNC1(chans, maxchans, nchans,
	    bands, !!(ic->ic_htcaps & IEEE80211_HTCAP_CHWIDTH40));

	/* XXX workaround add_channel_list() limitations */
	FUNC4(bands, IEEE80211_MODE_11A);
	FUNC4(bands, IEEE80211_MODE_11NA);
	for (i = 0; i < FUNC3(sc->chan_num_5ghz); i++) {
		if (sc->chan_num_5ghz[i] == 0)
			continue;

		FUNC0(chans, maxchans, nchans,
		    sc->chan_list_5ghz[i], sc->chan_num_5ghz[i], bands,
		    !!(ic->ic_htcaps & IEEE80211_HTCAP_CHWIDTH40));
	}
}
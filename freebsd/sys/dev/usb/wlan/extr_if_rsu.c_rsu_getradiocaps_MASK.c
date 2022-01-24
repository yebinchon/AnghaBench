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
struct rsu_softc {scalar_t__ sc_ht; } ;
struct ieee80211com {int ic_htcaps; struct rsu_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  bands ;

/* Variables and functions */
 int IEEE80211_HTCAP_CHWIDTH40 ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int /*<<< orphan*/  IEEE80211_MODE_11NG ; 
 int IEEE80211_MODE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
	struct rsu_softc *sc = ic->ic_softc;
	uint8_t bands[IEEE80211_MODE_BYTES];

	/* Set supported .11b and .11g rates. */
	FUNC1(bands, 0, sizeof(bands));
	FUNC2(bands, IEEE80211_MODE_11B);
	FUNC2(bands, IEEE80211_MODE_11G);
	if (sc->sc_ht)
		FUNC2(bands, IEEE80211_MODE_11NG);
	FUNC0(chans, maxchans, nchans,
	    bands, (ic->ic_htcaps & IEEE80211_HTCAP_CHWIDTH40) != 0);
}
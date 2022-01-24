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
typedef  int /*<<< orphan*/  u_int8_t ;
struct wi_softc {int sc_chanmask; } ;
struct ieee80211com {struct wi_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  bands ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int IEEE80211_MODE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
	struct wi_softc *sc = ic->ic_softc;
	u_int8_t bands[IEEE80211_MODE_BYTES];
	int i;

	FUNC1(bands, 0, sizeof(bands));
	FUNC2(bands, IEEE80211_MODE_11B);

	for (i = 1; i < 16; i++) {
		if (sc->sc_chanmask & (1 << i)) {
			/* XXX txpowers? */
			FUNC0(chans, maxchans, nchans,
			    i, 0, 0, 0, bands);
		}
	}
}
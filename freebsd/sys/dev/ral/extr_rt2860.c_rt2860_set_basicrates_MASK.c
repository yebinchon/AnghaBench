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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ieee80211com {int /*<<< orphan*/  ic_rt; } ;
struct rt2860_softc {struct ieee80211com sc_ic; } ;
struct ieee80211_rateset {int rs_nrates; int* rs_rates; } ;

/* Variables and functions */
 int IEEE80211_RATE_BASIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2860_LEGACY_BASIC_RATE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct rt2860_softc *sc,
    const struct ieee80211_rateset *rs)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t mask = 0;
	uint8_t rate;
	int i;

	for (i = 0; i < rs->rs_nrates; i++) {
		rate = rs->rs_rates[i];

		if (!(rate & IEEE80211_RATE_BASIC))
			continue;

		mask |= 1 << FUNC2(ic->ic_rt,
		    FUNC0(rate));
	}

	FUNC1(sc, RT2860_LEGACY_BASIC_RATE, mask);
}
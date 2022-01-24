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
struct rt2661_softc {struct ieee80211com sc_ic; } ;
struct ieee80211_rateset {int rs_nrates; int* rs_rates; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2661_softc*,char*,int) ; 
 int IEEE80211_RATE_BASIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2661_TXRX_CSR5 ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct rt2661_softc *sc,
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

		mask |= 1 << FUNC3(ic->ic_rt,
		    FUNC1(rate));
	}

	FUNC2(sc, RT2661_TXRX_CSR5, mask);

	FUNC0(sc, "Setting basic rate mask to 0x%x\n", mask);
}
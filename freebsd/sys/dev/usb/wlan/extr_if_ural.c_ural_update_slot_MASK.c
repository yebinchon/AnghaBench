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
typedef  int uint16_t ;
struct ieee80211com {scalar_t__ ic_curmode; } ;
struct ural_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211com*) ; 
 scalar_t__ IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  RAL_MAC_CSR10 ; 
 int /*<<< orphan*/  RAL_MAC_CSR11 ; 
 int /*<<< orphan*/  RAL_MAC_CSR12 ; 
 int RAL_RXTX_TURNAROUND ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ural_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint16_t slottime, sifs, eifs;

	slottime = FUNC0(ic);

	/*
	 * These settings may sound a bit inconsistent but this is what the
	 * reference driver does.
	 */
	if (ic->ic_curmode == IEEE80211_MODE_11B) {
		sifs = 16 - RAL_RXTX_TURNAROUND;
		eifs = 364;
	} else {
		sifs = 10 - RAL_RXTX_TURNAROUND;
		eifs = 64;
	}

	FUNC1(sc, RAL_MAC_CSR10, slottime);
	FUNC1(sc, RAL_MAC_CSR11, sifs);
	FUNC1(sc, RAL_MAC_CSR12, eifs);
}
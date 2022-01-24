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
typedef  int /*<<< orphan*/  uint32_t ;
struct ieee80211com {int ic_flags; } ;
struct rt2661_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int IEEE80211_F_SHPREAMBLE ; 
 int /*<<< orphan*/  FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2661_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  RT2661_TXRX_CSR4 ; 

__attribute__((used)) static void
FUNC2(struct rt2661_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t tmp;

	tmp = FUNC0(sc, RT2661_TXRX_CSR4);

	tmp &= ~RT2661_SHORT_PREAMBLE;
	if (ic->ic_flags & IEEE80211_F_SHPREAMBLE)
		tmp |= RT2661_SHORT_PREAMBLE;

	FUNC1(sc, RT2661_TXRX_CSR4, tmp);
}
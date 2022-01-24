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
struct ieee80211com {int ic_flags; } ;
struct rt2560_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*,char*,char*) ; 
 int IEEE80211_F_SHPREAMBLE ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2560_PLCP11MCSR ; 
 int /*<<< orphan*/  RT2560_PLCP1MCSR ; 
 int /*<<< orphan*/  RT2560_PLCP2MCSR ; 
 int /*<<< orphan*/  RT2560_PLCP5p5MCSR ; 

__attribute__((used)) static void
FUNC2(struct rt2560_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;

	/* no short preamble for 1Mbps */
	FUNC1(sc, RT2560_PLCP1MCSR, 0x00700400);

	if (!(ic->ic_flags & IEEE80211_F_SHPREAMBLE)) {
		/* values taken from the reference driver */
		FUNC1(sc, RT2560_PLCP2MCSR,   0x00380401);
		FUNC1(sc, RT2560_PLCP5p5MCSR, 0x00150402);
		FUNC1(sc, RT2560_PLCP11MCSR,  0x000b8403);
	} else {
		/* same values as above or'ed 0x8 */
		FUNC1(sc, RT2560_PLCP2MCSR,   0x00380409);
		FUNC1(sc, RT2560_PLCP5p5MCSR, 0x0015040a);
		FUNC1(sc, RT2560_PLCP11MCSR,  0x000b840b);
	}

	FUNC0(sc, "updating PLCP for %s preamble\n",
	    (ic->ic_flags & IEEE80211_F_SHPREAMBLE) ? "short" : "long");
}
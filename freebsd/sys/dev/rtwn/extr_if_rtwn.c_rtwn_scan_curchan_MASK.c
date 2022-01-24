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
struct rtwn_softc {int /*<<< orphan*/  (* sc_scan_curchan ) (struct ieee80211_scan_state*,unsigned long) ;int /*<<< orphan*/  ledlink; } ;
struct ieee80211_scan_state {TYPE_1__* ss_ic; } ;
struct TYPE_2__ {struct rtwn_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTWN_LED_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_scan_state*,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_scan_state *ss, unsigned long maxdwell)
{
	struct rtwn_softc *sc = ss->ss_ic->ic_softc;

	/* Make link LED blink during scan. */
	FUNC0(sc);
	FUNC2(sc, RTWN_LED_LINK, !sc->ledlink);
	FUNC1(sc);

	sc->sc_scan_curchan(ss, maxdwell);
}
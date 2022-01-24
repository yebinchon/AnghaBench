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
struct otus_softc {scalar_t__ sc_running; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct otus_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct otus_softc*) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211com *ic)
{
	struct otus_softc *sc = ic->ic_softc;
	int startall = 0;

	if (ic->ic_nrunning > 0) {
		if (!sc->sc_running) {
			FUNC1(sc);
			startall = 1;
		} else {
			(void) FUNC2(sc);
		}
	} else if (sc->sc_running)
		FUNC3(sc);

	if (startall)
		FUNC0(ic);
}
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
struct iwi_softc {scalar_t__ sc_running; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct iwi_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int /*<<< orphan*/  IWI_LOCK_DECL ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwi_softc*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic)
{
	struct iwi_softc *sc = ic->ic_softc;
	int startall = 0;
	IWI_LOCK_DECL;

	FUNC0(sc);
	if (ic->ic_nrunning > 0) {
		if (!sc->sc_running) {
			FUNC3(sc);
			startall = 1;
		}
	} else if (sc->sc_running)
		FUNC4(sc);
	FUNC1(sc);
	if (startall)
		FUNC2(ic);
}
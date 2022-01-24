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
struct iwn_softc {int /*<<< orphan*/  sc_rftoggle_task; int /*<<< orphan*/  sc_tq; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {scalar_t__ ic_nrunning; int /*<<< orphan*/  ic_vaps; struct iwn_softc* ic_softc; } ;

/* Variables and functions */
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 
 int FUNC3 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct iwn_softc *sc = ic->ic_softc;
	struct ieee80211vap *vap;
	int error;

	if (ic->ic_nrunning > 0) {
		error = FUNC3(sc);

		switch (error) {
		case 0:
			FUNC1(ic);
			break;
		case 1:
			/* radio is disabled via RFkill switch */
			FUNC5(sc->sc_tq, &sc->sc_rftoggle_task);
			break;
		default:
			vap = FUNC0(&ic->ic_vaps);
			if (vap != NULL)
				FUNC2(vap);
			break;
		}
	} else
		FUNC4(sc);
}
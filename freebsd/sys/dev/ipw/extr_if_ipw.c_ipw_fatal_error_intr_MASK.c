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
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct ipw_softc {int /*<<< orphan*/  sc_init_task; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*) ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ipw_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);

	FUNC3(sc->sc_dev, "firmware error\n");
	if (vap != NULL) {
		FUNC1(sc);
		FUNC4(vap);
		FUNC0(sc);
	}
	FUNC5(ic, &sc->sc_init_task);
}
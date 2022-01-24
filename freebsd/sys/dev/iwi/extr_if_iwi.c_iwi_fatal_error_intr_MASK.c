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
struct iwi_softc {scalar_t__ sc_busy_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  sc_restarttask; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWI_FLAG_BUSY ; 
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwi_softc*) ; 

__attribute__((used)) static void
FUNC5(struct iwi_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC0(&ic->ic_vaps);

	FUNC1(sc->sc_dev, "firmware error\n");
	if (vap != NULL)
		FUNC2(vap);
	FUNC3(ic, &sc->sc_restarttask);

	sc->flags &= ~IWI_FLAG_BUSY;
	sc->sc_busy_timer = 0;
	FUNC4(sc);
}
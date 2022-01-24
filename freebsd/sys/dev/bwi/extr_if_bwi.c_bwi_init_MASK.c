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
struct ieee80211com {int dummy; } ;
struct bwi_softc {int sc_flags; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int BWI_F_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC4(struct bwi_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(sc);
	FUNC2(sc, 1);
	FUNC1(sc);

	if (sc->sc_flags & BWI_F_RUNNING)
		FUNC3(ic);		/* start all vap's */
}
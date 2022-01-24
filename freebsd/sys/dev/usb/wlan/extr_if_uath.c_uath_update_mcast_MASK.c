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
struct uath_softc {int sc_flags; } ;
struct ieee80211com {struct uath_softc* ic_softc; } ;

/* Variables and functions */
 int UATH_FLAG_INITDONE ; 
 int UATH_FLAG_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct uath_softc *sc = ic->ic_softc;

	FUNC0(sc);
	if ((sc->sc_flags & UATH_FLAG_INVALID) ||
	    (sc->sc_flags & UATH_FLAG_INITDONE) == 0) {
		FUNC1(sc);
		return;
	}
	/*
	 * this is for avoiding the race condition when we're try to
	 * connect to the AP with WPA.
	 */
	if (sc->sc_flags & UATH_FLAG_INITDONE)
		(void)FUNC2(sc);
	FUNC1(sc);
}
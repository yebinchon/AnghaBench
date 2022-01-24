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
struct rt2661_softc {int sc_flags; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2661_softc*) ; 
 int RAL_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2661_softc*) ; 

__attribute__((used)) static void
FUNC4(void *priv)
{
	struct rt2661_softc *sc = priv;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(sc);
	FUNC3(sc);
	FUNC1(sc);

	if (sc->sc_flags & RAL_RUNNING)
		FUNC2(ic);		/* start all vap's */
}
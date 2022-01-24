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
struct rt2860_softc {int sc_flags; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int RT2860_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct rt2860_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(sc);
	FUNC3(sc);
	FUNC1(sc);

	if (sc->sc_flags & RT2860_RUNNING)
		FUNC2(ic);
}
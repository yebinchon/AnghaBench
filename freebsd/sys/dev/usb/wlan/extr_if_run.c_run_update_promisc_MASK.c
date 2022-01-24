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
struct run_softc {int sc_flags; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct run_softc*) ; 
 int RUN_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct run_softc *sc = ic->ic_softc;

	if ((sc->sc_flags & RUN_RUNNING) == 0)
		return;

	FUNC0(sc);
	FUNC2(sc);
	FUNC1(sc);
}
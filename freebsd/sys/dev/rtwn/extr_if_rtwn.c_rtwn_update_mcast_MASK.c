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
struct rtwn_softc {int sc_flags; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int RTWN_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct rtwn_softc *sc = ic->ic_softc;

	FUNC0(sc);
	if (sc->sc_flags & RTWN_RUNNING)
		FUNC2(sc);
	FUNC1(sc);
}
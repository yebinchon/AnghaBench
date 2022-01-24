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
struct malo_softc {scalar_t__ malo_running; struct ieee80211com malo_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct malo_softc*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct malo_softc *sc = (struct malo_softc *) arg;
	struct ieee80211com *ic = &sc->malo_ic;
	
	FUNC0(sc);
	FUNC3(sc);
	FUNC1(sc);

	if (sc->malo_running)
		FUNC2(ic);	/* start all vap's */
}
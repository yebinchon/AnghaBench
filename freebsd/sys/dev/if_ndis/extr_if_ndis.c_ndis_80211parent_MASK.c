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
struct ndis_softc {scalar_t__ ndis_running; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct ndis_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ndis_softc*) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211com *ic)
{
	struct ndis_softc *sc = ic->ic_softc;

	/*NDIS_LOCK(sc);*/
	if (ic->ic_nrunning > 0) {
		if (!sc->ndis_running)
			FUNC0(sc);
	} else if (sc->ndis_running)
		FUNC1(sc);
	/*NDIS_UNLOCK(sc);*/
}
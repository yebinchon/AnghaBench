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
struct upgt_softc {int sc_flags; scalar_t__ sc_tx_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_S_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct upgt_softc*) ; 
 int UPGT_FLAG_INITDONE ; 
 int /*<<< orphan*/  FUNC1 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct upgt_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct upgt_softc *sc)
{

	FUNC0(sc);

	if (sc->sc_flags & UPGT_FLAG_INITDONE)
		FUNC2(sc, IEEE80211_S_INIT);
	FUNC1(sc);
	/* device down */
	sc->sc_tx_timer = 0;
	sc->sc_flags &= ~UPGT_FLAG_INITDONE;
}
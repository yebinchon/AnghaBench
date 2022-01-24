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
 int /*<<< orphan*/  UATH_FILTER_OP_SET ; 
 int UATH_FILTER_RX_BCAST ; 
 int UATH_FILTER_RX_BEACON ; 
 int UATH_FILTER_RX_MCAST ; 
 int UATH_FILTER_RX_PROM ; 
 int UATH_FILTER_RX_UCAST ; 
 int UATH_FLAG_INITDONE ; 
 int UATH_FLAG_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*,int,int /*<<< orphan*/ ) ; 

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
	if (sc->sc_flags & UATH_FLAG_INITDONE) {
		FUNC2(sc,
		    UATH_FILTER_RX_UCAST | UATH_FILTER_RX_MCAST |
		    UATH_FILTER_RX_BCAST | UATH_FILTER_RX_BEACON |
		    UATH_FILTER_RX_PROM, UATH_FILTER_OP_SET);
	}
	FUNC1(sc);
}
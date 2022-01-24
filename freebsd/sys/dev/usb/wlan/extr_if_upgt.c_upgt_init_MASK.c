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
struct upgt_softc {int sc_flags; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_S_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct upgt_softc*) ; 
 size_t UPGT_BULK_RX ; 
 int UPGT_FLAG_INITDONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct upgt_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct upgt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct upgt_softc*) ; 
 int /*<<< orphan*/  upgt_watchdog ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct upgt_softc *sc)
{

	FUNC0(sc);

	if (sc->sc_flags & UPGT_FLAG_INITDONE)
		FUNC3(sc);

	FUNC4(sc->sc_xfer[UPGT_BULK_RX]);

	(void)FUNC2(sc, IEEE80211_S_SCAN);

	sc->sc_flags |= UPGT_FLAG_INITDONE;

	FUNC1(&sc->sc_watchdog_ch, hz, upgt_watchdog, sc);
}
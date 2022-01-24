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
struct uath_softc {scalar_t__ sc_tx_timer; int /*<<< orphan*/  watchdog_ch; int /*<<< orphan*/  stat_ch; int /*<<< orphan*/  sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uath_softc*) ; 
 int /*<<< orphan*/  UATH_FLAG_INITDONE ; 
 int /*<<< orphan*/  WDCMSG_TARGET_STOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uath_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uath_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct uath_softc *sc)
{

	FUNC0(sc);

	sc->sc_flags &= ~UATH_FLAG_INITDONE;

	FUNC1(&sc->stat_ch);
	FUNC1(&sc->watchdog_ch);
	sc->sc_tx_timer = 0;
	/* abort pending transmits  */
	FUNC2(sc);
	/* flush data & control requests into the target  */
	(void)FUNC4(sc);
	/* set a LED status to the disconnected.  */
	FUNC5(sc, 0);
	/* stop the target  */
	FUNC3(sc, WDCMSG_TARGET_STOP, NULL, 0, 0);
}
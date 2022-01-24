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
typedef  int u_int16_t ;
struct wi_softc {int sc_flags; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_enabled; scalar_t__ wi_gone; } ;

/* Variables and functions */
 int FUNC0 (struct wi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WI_EVENT_ACK ; 
 int /*<<< orphan*/  WI_EVENT_STAT ; 
 int WI_EV_ALLOC ; 
 int WI_EV_INFO ; 
 int WI_EV_RX ; 
 int WI_EV_TX_EXC ; 
 int WI_FLAGS_RUNNING ; 
 int WI_INTRS ; 
 int /*<<< orphan*/  WI_INT_EN ; 
 int /*<<< orphan*/  FUNC2 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct wi_softc*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct wi_softc*) ; 

void
FUNC10(void *arg)
{
	struct wi_softc *sc = arg;
	u_int16_t status;

	FUNC2(sc);

	if (sc->wi_gone || !sc->sc_enabled ||
	    (sc->sc_flags & WI_FLAGS_RUNNING) == 0) {
		FUNC1(sc, WI_INT_EN, 0);
		FUNC1(sc, WI_EVENT_ACK, 0xFFFF);
		FUNC3(sc);
		return;
	}

	/* Disable interrupts. */
	FUNC1(sc, WI_INT_EN, 0);

	status = FUNC0(sc, WI_EVENT_STAT);
	if (status & WI_EV_RX)
		FUNC6(sc);
	if (status & WI_EV_ALLOC)
		FUNC9(sc);
	if (status & WI_EV_TX_EXC)
		FUNC8(sc);
	if (status & WI_EV_INFO)
		FUNC5(sc);
	if (FUNC4(&sc->sc_snd) != NULL)
		FUNC7(sc);

	/* Re-enable interrupts. */
	FUNC1(sc, WI_INT_EN, WI_INTRS);

	FUNC3(sc);

	return;
}
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
struct otus_softc {scalar_t__ sc_running; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  calib_to; int /*<<< orphan*/  scan_to; scalar_t__ sc_tx_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MAC_REG_DMA_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct otus_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

void
FUNC8(struct otus_softc *sc)
{
#if 0
	int s;
#endif

	FUNC2(sc);

	FUNC0(sc);
	sc->sc_running = 0;
	sc->sc_tx_timer = 0;
	FUNC1(sc);

	FUNC7(taskqueue_thread, &sc->scan_to);
	FUNC7(taskqueue_thread, &sc->calib_to);
	FUNC6(taskqueue_thread, &sc->tx_task);

	FUNC0(sc);
	sc->sc_running = 0;
	/* Stop Rx. */
	FUNC4(sc, AR_MAC_REG_DMA_TRIGGER, 0);
	(void)FUNC5(sc);

	/* Drain any pending TX frames */
	FUNC3(sc);

	FUNC1(sc);
}
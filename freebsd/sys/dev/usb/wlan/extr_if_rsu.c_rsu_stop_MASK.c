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
struct rsu_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  keys_bmap; int /*<<< orphan*/  free_keys_bmap; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  calib_task; scalar_t__ sc_calibrating; scalar_t__ sc_vap_is_running; scalar_t__ sc_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*) ; 
 int RSU_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct rsu_softc *sc)
{
	int i;

	FUNC0(sc);
	if (!sc->sc_running) {
		FUNC1(sc);
		return;
	}

	sc->sc_running = 0;
	sc->sc_vap_is_running = 0;
	sc->sc_calibrating = 0;
	FUNC6(taskqueue_thread, &sc->calib_task, NULL);
	FUNC5(taskqueue_thread, &sc->tx_task, NULL);

	/* Power off adapter. */
	FUNC4(sc);

	/*
	 * CAM is not accessible after shutdown;
	 * all entries are marked (by firmware?) as invalid.
	 */
	FUNC2(sc->free_keys_bmap, 0, sizeof(sc->free_keys_bmap));
	FUNC2(sc->keys_bmap, 0, sizeof(sc->keys_bmap));

	for (i = 0; i < RSU_N_TRANSFER; i++)
		FUNC7(sc->sc_xfer[i]);

	/* Ensure the mbuf queue is drained */
	FUNC3(sc);
	FUNC1(sc);
}
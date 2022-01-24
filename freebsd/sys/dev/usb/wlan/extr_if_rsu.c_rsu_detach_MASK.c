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
struct rsu_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  del_key_task; int /*<<< orphan*/  calib_task; int /*<<< orphan*/  sc_xfer; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*) ; 
 int /*<<< orphan*/  RSU_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC2 (struct rsu_softc*) ; 
 struct rsu_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t self)
{
	struct rsu_softc *sc = FUNC3(self);
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC8(sc);

	FUNC11(sc->sc_xfer, RSU_N_TRANSFER);

	/*
	 * Free buffers /before/ we detach from net80211, else node
	 * references to destroyed vaps will lead to a panic.
	 */
	/* Free Tx/Rx buffers. */
	FUNC1(sc);
	FUNC7(sc);
	FUNC6(sc);
	FUNC2(sc);

	/* Frames are freed; detach from net80211 */
	FUNC4(ic);

	FUNC10(taskqueue_thread, &sc->calib_task);
	FUNC9(taskqueue_thread, &sc->del_key_task);
	FUNC9(taskqueue_thread, &sc->tx_task);

	FUNC0(sc);
	FUNC5(&sc->sc_mtx);

	return (0);
}
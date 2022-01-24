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
struct otus_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_task; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  calib_to; int /*<<< orphan*/  scan_to; int /*<<< orphan*/  sc_xfer; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  OTUS_N_XFER ; 
 struct otus_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t self)
{
	struct otus_softc *sc = FUNC0(self);
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC4(sc);

	FUNC9(sc->sc_xfer, OTUS_N_XFER);

	FUNC6(taskqueue_thread, &sc->scan_to);
	FUNC6(taskqueue_thread, &sc->calib_to);
	FUNC5(taskqueue_thread, &sc->tx_task);

	FUNC3(sc);
#if 0
	/* Wait for all queued asynchronous commands to complete. */
	usb_rem_wait_task(sc->sc_udev, &sc->sc_task);

	usbd_ref_wait(sc->sc_udev);
#endif

	FUNC1(ic);
	FUNC2(&sc->sc_mtx);
	return 0;
}
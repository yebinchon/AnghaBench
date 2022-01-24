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
struct ums_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_evdev; int /*<<< orphan*/  sc_fifo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ums_softc*) ; 
 int /*<<< orphan*/  UMS_N_TRANSFER ; 
 struct ums_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t self)
{
	struct ums_softc *sc = FUNC1(self);

	FUNC0("sc=%p\n", sc);

	FUNC5(&sc->sc_fifo);

#ifdef EVDEV_SUPPORT
	evdev_free(sc->sc_evdev);
#endif

	FUNC6(sc->sc_xfer, UMS_N_TRANSFER);

	FUNC4(&sc->sc_callout);

	FUNC3(&sc->sc_mtx);

	return (0);
}
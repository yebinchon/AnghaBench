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
struct ulpt_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_fifo_noreset; int /*<<< orphan*/  sc_fifo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ulpt_softc*) ; 
 int /*<<< orphan*/  ULPT_N_TRANSFER ; 
 struct ulpt_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct ulpt_softc *sc = FUNC1(dev);

	FUNC0("sc=%p\n", sc);

	FUNC7(&sc->sc_fifo);
	FUNC7(&sc->sc_fifo_noreset);

	FUNC3(&sc->sc_mtx);
	FUNC6(&sc->sc_watchdog);
	FUNC4(&sc->sc_mtx);

	FUNC8(sc->sc_xfer, ULPT_N_TRANSFER);
	FUNC5(&sc->sc_watchdog);
	FUNC2(&sc->sc_mtx);

	return (0);
}
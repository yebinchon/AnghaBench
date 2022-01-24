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
struct uhid_snes_softc {int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/  sc_transfer; int /*<<< orphan*/  sc_fifo_no_reset; int /*<<< orphan*/  sc_fifo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  UHID_SNES_N_TRANSFER ; 
 struct uhid_snes_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct uhid_snes_softc *sc = FUNC0(dev);

	FUNC6(&sc->sc_fifo);
	FUNC6(&sc->sc_fifo_no_reset);

	FUNC2(&sc->sc_mutex);
	FUNC5(&sc->sc_watchdog);
	FUNC3(&sc->sc_mutex);

	FUNC7(sc->sc_transfer, UHID_SNES_N_TRANSFER);
	FUNC4(&sc->sc_watchdog);
	FUNC1(&sc->sc_mutex);

	return (0);
}
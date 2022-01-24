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
struct vtbe_softc {int opened; int /*<<< orphan*/  pio_recv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtbe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtbe_intr ; 

__attribute__((used)) static int
FUNC2(struct vtbe_softc *sc, int enable)
{

	/*
	 * IRQ lines should be disabled while reprogram FPGA core.
	 */

	if (enable) {
		if (sc->opened == 0) {
			sc->opened = 1;
			FUNC0(sc->pio_recv, vtbe_intr, sc);
		}
	} else {
		if (sc->opened == 1) {
			FUNC1(sc->pio_recv);
			sc->opened = 0;
		}
	}

	return (0);
}
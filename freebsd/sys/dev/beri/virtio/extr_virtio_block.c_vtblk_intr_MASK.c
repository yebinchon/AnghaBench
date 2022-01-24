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
struct beri_vtblk_softc {int /*<<< orphan*/  pio_recv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int Q_NOTIFY ; 
 int Q_PFN ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct beri_vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct beri_vtblk_softc*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct beri_vtblk_softc *sc;
	int pending;
	int reg;

	sc = arg;

	reg = FUNC0(sc->pio_recv);

	/* Ack */
	FUNC1(sc->pio_recv, reg, 0);

	pending = FUNC2(reg);

	if (pending & Q_PFN) {
		FUNC3(sc);
	}

	if (pending & Q_NOTIFY) {
		FUNC4(sc);
	}
}
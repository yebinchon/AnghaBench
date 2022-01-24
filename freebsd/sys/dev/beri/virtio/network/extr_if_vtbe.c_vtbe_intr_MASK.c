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
typedef  int /*<<< orphan*/  uint32_t ;
struct vtbe_softc {int /*<<< orphan*/  vs_curq; int /*<<< orphan*/  pio_recv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Q_NOTIFY ; 
 int Q_NOTIFY1 ; 
 int Q_PFN ; 
 int Q_SEL ; 
 int /*<<< orphan*/  FUNC2 (struct vtbe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_SEL ; 
 int /*<<< orphan*/  FUNC3 (struct vtbe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtbe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vtbe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vtbe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vtbe_softc*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct vtbe_softc *sc;
	int pending;
	uint32_t reg;

	sc = arg;

	FUNC3(sc);

	reg = FUNC0(sc->pio_recv);

	/* Ack */
	FUNC1(sc->pio_recv, reg, 0);

	pending = FUNC6(reg);
	if (pending & Q_SEL) {
		reg = FUNC2(sc, VIRTIO_MMIO_QUEUE_SEL);
		sc->vs_curq = FUNC5(reg);
	}

	if (pending & Q_PFN) {
		FUNC7(sc);
	}

	if (pending & Q_NOTIFY) {
		/* beri rx / arm tx notify */
		FUNC9(sc);
	}

	if (pending & Q_NOTIFY1) {
		FUNC8(sc);
	}

	FUNC4(sc);
}
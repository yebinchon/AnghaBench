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
typedef  int uint32_t ;
struct intelspi_softc {int sc_flags; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int INTELSPI_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct intelspi_softc*) ; 
 int FUNC1 (struct intelspi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SSCR1 ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SSSR ; 
 int /*<<< orphan*/  FUNC2 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intelspi_softc*,int /*<<< orphan*/ ,int) ; 
 int SSCR1_RIE ; 
 int SSCR1_TIE ; 
 int SSCR1_TINTE ; 
 scalar_t__ FUNC4 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct intelspi_softc *sc;
	uint32_t reg;

	sc = (struct intelspi_softc *)arg;

	FUNC0(sc);
	if ((sc->sc_flags & INTELSPI_BUSY) == 0) {
		FUNC2(sc);
		return;
	}

	/* Check if SSP if off */
	reg = FUNC1(sc, INTELSPI_SSPREG_SSSR);
	if (reg == 0xffffffffU) {
		FUNC2(sc);
		return;
	}

	/* Check for end of transfer. */
	if (FUNC4(sc)) {
		/* Disable interrupts */
		reg = FUNC1(sc, INTELSPI_SSPREG_SSCR1);
		reg &= ~(SSCR1_TIE | SSCR1_RIE | SSCR1_TINTE);
		FUNC3(sc, INTELSPI_SSPREG_SSCR1, reg);
		FUNC5(sc->sc_dev);
	}

	FUNC2(sc);
}
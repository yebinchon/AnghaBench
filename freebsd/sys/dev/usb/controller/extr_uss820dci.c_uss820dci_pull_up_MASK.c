#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int d_pulled_up; scalar_t__ port_powered; } ;
struct uss820dci_softc {TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  USS820_MCSR ; 
 int /*<<< orphan*/  USS820_MCSR_DPEN ; 
 int /*<<< orphan*/  FUNC1 (struct uss820dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uss820dci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct uss820dci_softc *sc)
{
	uint8_t temp;

	/* pullup D+, if possible */

	if (!sc->sc_flags.d_pulled_up &&
	    sc->sc_flags.port_powered) {
		sc->sc_flags.d_pulled_up = 1;

		FUNC0("\n");

		temp = FUNC1(sc, USS820_MCSR);
		temp |= USS820_MCSR_DPEN;
		FUNC2(sc, USS820_MCSR, temp);
	}
}
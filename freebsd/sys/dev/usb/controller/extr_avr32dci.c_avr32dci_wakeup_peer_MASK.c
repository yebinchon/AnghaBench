#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bus_mtx; } ;
struct TYPE_3__ {int /*<<< orphan*/  status_suspend; } ;
struct avr32dci_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVR32_CTRL_DEV_REWAKEUP ; 
 int /*<<< orphan*/  FUNC0 (struct avr32dci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct avr32dci_softc *sc)
{
	if (!sc->sc_flags.status_suspend) {
		return;
	}
	FUNC0(sc, AVR32_CTRL_DEV_REWAKEUP, 0);

	/* wait 8 milliseconds */
	/* Wait for reset to complete. */
	FUNC1(&sc->sc_bus.bus_mtx, hz / 125);

	/* hardware should have cleared RMWKUP bit */
}
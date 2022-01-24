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
struct TYPE_2__ {int clocks_off; } ;
struct avr32dci_softc {TYPE_1__ sc_flags; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/  (* sc_clocks_off ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AVR32_CTRL_DEV_EN_USBA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct avr32dci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct avr32dci_softc *sc)
{
	if (!sc->sc_flags.clocks_off) {

		FUNC0(5, "\n");

		FUNC1(sc, 0, AVR32_CTRL_DEV_EN_USBA);

		/* turn clocks off */
		(sc->sc_clocks_off) (&sc->sc_bus);

		sc->sc_flags.clocks_off = 1;
	}
}
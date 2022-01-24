#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sc_bus; } ;
typedef  TYPE_1__ uhci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UHCI_CMD_FGR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int uhcidebug ; 

__attribute__((used)) static void
FUNC7(uhci_softc_t *sc)
{
	FUNC1(&sc->sc_bus);

	/* reset the controller */

	FUNC5(sc);

	/* force global resume */

	FUNC0(sc, UHCI_CMD_FGR);

	/* and start traffic again */

	FUNC6(sc);

	FUNC2(&sc->sc_bus);

#ifdef USB_DEBUG
	if (uhcidebug > 2)
		uhci_dumpregs(sc);
#endif

	/* catch lost interrupts */
	FUNC3(&sc->sc_bus);
}
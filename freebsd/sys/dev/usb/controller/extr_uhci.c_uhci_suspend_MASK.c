#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sc_bus; } ;
typedef  TYPE_1__ uhci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UHCI_CMD_EGSM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int uhcidebug ; 

__attribute__((used)) static void
FUNC5(uhci_softc_t *sc)
{
#ifdef USB_DEBUG
	if (uhcidebug > 2) {
		uhci_dumpregs(sc);
	}
#endif

	FUNC1(&sc->sc_bus);

	/* stop the controller */

	FUNC4(sc);

	/* enter global suspend */

	FUNC0(sc, UHCI_CMD_EGSM);

	FUNC2(&sc->sc_bus);
}
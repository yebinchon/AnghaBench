#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sc_tmo_poll; int /*<<< orphan*/  sc_tmo_pcd; int /*<<< orphan*/  sc_bus; } ;
typedef  TYPE_1__ ehci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EHCI_USBINTR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void
FUNC8(ehci_softc_t *sc)
{
	FUNC2(&sc->sc_bus);

	FUNC6(&sc->sc_tmo_pcd);
	FUNC6(&sc->sc_tmo_poll);

	FUNC1(sc, EHCI_USBINTR, 0);
	FUNC3(&sc->sc_bus);

	if (FUNC4(sc)) {
		FUNC0("reset failed!\n");
	}

	/* XXX let stray task complete */
	FUNC7(NULL, hz / 20);

	FUNC5(&sc->sc_tmo_pcd);
	FUNC5(&sc->sc_tmo_poll);
}
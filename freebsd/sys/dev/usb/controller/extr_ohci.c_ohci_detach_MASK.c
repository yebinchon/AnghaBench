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
struct ohci_softc {int /*<<< orphan*/  sc_tmo_rhsc; int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_ALL_INTRS ; 
 int /*<<< orphan*/  OHCI_CONTROL ; 
 int /*<<< orphan*/  OHCI_HCFS_RESET ; 
 int /*<<< orphan*/  OHCI_INTERRUPT_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ohci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void
FUNC6(struct ohci_softc *sc)
{
	FUNC1(&sc->sc_bus);

	FUNC4(&sc->sc_tmo_rhsc);

	FUNC0(sc, OHCI_INTERRUPT_DISABLE, OHCI_ALL_INTRS);
	FUNC0(sc, OHCI_CONTROL, OHCI_HCFS_RESET);

	FUNC2(&sc->sc_bus);

	/* XXX let stray task complete */
	FUNC5(NULL, hz / 20);

	FUNC3(&sc->sc_tmo_rhsc);
}
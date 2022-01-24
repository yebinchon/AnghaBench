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
struct xhci_softc {int /*<<< orphan*/  sc_cmd_sx; int /*<<< orphan*/  sc_cmd_cv; int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xhci_iterate_hw_softc ; 

void
FUNC3(struct xhci_softc *sc)
{
	/*
	 * NOTE: At this point the control transfer process is gone
	 * and "xhci_configure_msg" is no longer called. Consequently
	 * waiting for the configuration messages to complete is not
	 * needed.
	 */
	FUNC2(&sc->sc_bus, &xhci_iterate_hw_softc);

	FUNC0(&sc->sc_cmd_cv);
	FUNC1(&sc->sc_cmd_sx);
}
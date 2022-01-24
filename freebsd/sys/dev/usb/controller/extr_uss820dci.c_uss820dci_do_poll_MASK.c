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
struct uss820dci_softc {int /*<<< orphan*/  sc_bus; } ;
struct usb_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct uss820dci_softc* FUNC4 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct uss820dci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct uss820dci_softc*) ; 

__attribute__((used)) static void
FUNC7(struct usb_bus *bus)
{
	struct uss820dci_softc *sc = FUNC4(bus);

	FUNC0(&sc->sc_bus);
	FUNC1(&sc->sc_bus);
	FUNC6(sc);
	FUNC5(sc);
	FUNC2(&sc->sc_bus);
	FUNC3(&sc->sc_bus);
}
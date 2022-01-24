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
struct xhci_softc {int /*<<< orphan*/  sc_bus; } ;
struct usb_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct xhci_softc* FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_softc*) ; 

__attribute__((used)) static void
FUNC4(struct usb_bus *bus)
{
	struct xhci_softc *sc = FUNC2(bus);

	FUNC0(&sc->sc_bus);
	FUNC3(sc);
	FUNC1(&sc->sc_bus);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_bus {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sc_bus; } ;
typedef  TYPE_1__ ehci_softc_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(struct usb_bus *bus)
{
	ehci_softc_t *sc = FUNC0(bus);

	FUNC1(&sc->sc_bus);
	FUNC3(sc);
	FUNC2(&sc->sc_bus);
}
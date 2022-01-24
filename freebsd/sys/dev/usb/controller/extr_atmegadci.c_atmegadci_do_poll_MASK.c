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
struct usb_bus {int dummy; } ;
struct atmegadci_softc {int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 struct atmegadci_softc* FUNC0 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atmegadci_softc*) ; 

__attribute__((used)) static void
FUNC4(struct usb_bus *bus)
{
	struct atmegadci_softc *sc = FUNC0(bus);

	FUNC1(&sc->sc_bus);
	FUNC3(sc);
	FUNC2(&sc->sc_bus);
}
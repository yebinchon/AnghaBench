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
struct TYPE_5__ {int /*<<< orphan*/  sc_bus; } ;
typedef  TYPE_1__ ohci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int ohcidebug ; 

__attribute__((used)) static void
FUNC4(ohci_softc_t *sc)
{
	FUNC0("\n");

#ifdef USB_DEBUG
	if (ohcidebug > 2)
		ohci_dumpregs(sc);
#endif

	/* some broken BIOSes never initialize the Controller chip */
	FUNC1(sc, 0);

	/* catch any lost interrupts */
	FUNC2(&sc->sc_bus);
}
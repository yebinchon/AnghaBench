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
struct TYPE_5__ {int* sc_hub_idata; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/  sc_root_intr; } ;
typedef  TYPE_1__ uhci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  UHCI_PORTSC1 ; 
 int /*<<< orphan*/  UHCI_PORTSC2 ; 
 int UHCI_PORTSC_CSC ; 
 int UHCI_PORTSC_OCIC ; 
 int UHCI_PORTSC_RD ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(uhci_softc_t *sc)
{
	FUNC0(21, "\n");

	FUNC2(&sc->sc_bus, MA_OWNED);

	sc->sc_hub_idata[0] = 0;

	if (FUNC1(sc, UHCI_PORTSC1) & (UHCI_PORTSC_CSC |
	    UHCI_PORTSC_OCIC | UHCI_PORTSC_RD)) {
		sc->sc_hub_idata[0] |= 1 << 1;
	}
	if (FUNC1(sc, UHCI_PORTSC2) & (UHCI_PORTSC_CSC |
	    UHCI_PORTSC_OCIC | UHCI_PORTSC_RD)) {
		sc->sc_hub_idata[0] |= 1 << 2;
	}

	/* restart timer */
	FUNC4(&sc->sc_root_intr, hz,
	    (void *)&uhci_root_intr, sc);

	if (sc->sc_hub_idata[0] != 0) {
		FUNC3(&sc->sc_bus, sc->sc_hub_idata,
		    sizeof(sc->sc_hub_idata));
	}
}
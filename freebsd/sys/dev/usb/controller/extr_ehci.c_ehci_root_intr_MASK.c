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
typedef  int uint16_t ;
struct TYPE_4__ {int* sc_hub_idata; int sc_noport; int /*<<< orphan*/  sc_bus; } ;
typedef  TYPE_1__ ehci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EHCI_PS_CLEAR ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static void
FUNC6(ehci_softc_t *sc)
{
	uint16_t i;
	uint16_t m;

	FUNC3(&sc->sc_bus, MA_OWNED);

	/* clear any old interrupt data */
	FUNC4(sc->sc_hub_idata, 0, sizeof(sc->sc_hub_idata));

	/* set bits */
	m = (sc->sc_noport + 1);
	if (m > (8 * sizeof(sc->sc_hub_idata))) {
		m = (8 * sizeof(sc->sc_hub_idata));
	}
	for (i = 1; i < m; i++) {
		/* pick out CHANGE bits from the status register */
		if (FUNC2(sc, FUNC1(i)) & EHCI_PS_CLEAR) {
			sc->sc_hub_idata[i / 8] |= 1 << (i % 8);
			FUNC0("port %d changed\n", i);
		}
	}
	FUNC5(&sc->sc_bus, sc->sc_hub_idata,
	    sizeof(sc->sc_hub_idata));
}
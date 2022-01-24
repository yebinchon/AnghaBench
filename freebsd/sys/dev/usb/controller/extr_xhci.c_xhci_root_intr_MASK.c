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
typedef  int uint16_t ;
struct xhci_softc {int* sc_hub_idata; int sc_noport; int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int XHCI_PS_CEC ; 
 int XHCI_PS_CSC ; 
 int XHCI_PS_OCC ; 
 int XHCI_PS_PEC ; 
 int XHCI_PS_PLC ; 
 int XHCI_PS_PRC ; 
 int XHCI_PS_WRC ; 
 int FUNC3 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  oper ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static void
FUNC6(struct xhci_softc *sc)
{
	uint16_t i;

	FUNC1(&sc->sc_bus, MA_OWNED);

	/* clear any old interrupt data */
	FUNC4(sc->sc_hub_idata, 0, sizeof(sc->sc_hub_idata));

	for (i = 1; i <= sc->sc_noport; i++) {
		/* pick out CHANGE bits from the status register */
		if (FUNC3(sc, oper, FUNC2(i)) & (
		    XHCI_PS_CSC | XHCI_PS_PEC |
		    XHCI_PS_OCC | XHCI_PS_WRC |
		    XHCI_PS_PRC | XHCI_PS_PLC |
		    XHCI_PS_CEC)) {
			sc->sc_hub_idata[i / 8] |= 1 << (i % 8);
			FUNC0("port %d changed\n", i);
		}
	}
	FUNC5(&sc->sc_bus, sc->sc_hub_idata,
	    sizeof(sc->sc_hub_idata));
}
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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct xhci_trb {int dummy; } ;
struct pci_xhci_softc {int /*<<< orphan*/ * portregs; } ;
struct pci_xhci_portregs {int portsc; int portpmsc; int porthlpmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct pci_xhci_softc*,int) ; 
 int XHCI_MAX_DEVS ; 
 int XHCI_PORTREGS_PORT0 ; 
 int XHCI_PORTREGS_SETSZ ; 
 struct pci_xhci_portregs* FUNC3 (struct pci_xhci_softc*,int) ; 
 int XHCI_PS_CAS ; 
 int XHCI_PS_CCS ; 
 int XHCI_PS_CEC ; 
 int XHCI_PS_CSC ; 
 int XHCI_PS_DR ; 
 int XHCI_PS_LWS ; 
 int XHCI_PS_OCA ; 
 int XHCI_PS_OCC ; 
 int XHCI_PS_PEC ; 
 int XHCI_PS_PED ; 
 int XHCI_PS_PIC_MASK ; 
 int XHCI_PS_PLC ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int XHCI_PS_PLS_MASK ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int XHCI_PS_PP ; 
 int XHCI_PS_PR ; 
 int XHCI_PS_PRC ; 
 int XHCI_PS_SPEED_MASK ; 
 int XHCI_PS_WPR ; 
 int XHCI_PS_WRC ; 
 int /*<<< orphan*/  XHCI_TRB_ERROR_SUCCESS ; 
 int /*<<< orphan*/  XHCI_TRB_EVENT_PORT_STS_CHANGE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_xhci_softc*,struct xhci_trb*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_xhci_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_trb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct pci_xhci_softc *sc, uint64_t offset,
    uint64_t value)
{
	struct xhci_trb		evtrb;
	struct pci_xhci_portregs *p;
	int port;
	uint32_t oldpls, newpls;

	if (sc->portregs == NULL)
		return;

	port = (offset - XHCI_PORTREGS_PORT0) / XHCI_PORTREGS_SETSZ;
	offset = (offset - XHCI_PORTREGS_PORT0) % XHCI_PORTREGS_SETSZ;

	FUNC0(("pci_xhci: portregs wr offset 0x%lx, port %u: 0x%lx\r\n",
	        offset, port, value));

	FUNC6(port >= 0);

	if (port > XHCI_MAX_DEVS) {
		FUNC0(("pci_xhci: portregs_write port %d > ndevices\r\n",
		    port));
		return;
	}

	if (FUNC2(sc, port) == NULL) {
		FUNC0(("pci_xhci: portregs_write to unattached port %d\r\n",
		     port));
	}

	p = FUNC3(sc, port);
	switch (offset) {
	case 0:
		/* port reset or warm reset */
		if (value & (XHCI_PS_PR | XHCI_PS_WPR)) {
			FUNC8(sc, port, value & XHCI_PS_WPR);
			break;
		}

		if ((p->portsc & XHCI_PS_PP) == 0) {
			FUNC1(("pci_xhci: portregs_write to unpowered "
			         "port %d\r\n", port));
			break;
		}

		/* Port status and control register  */
		oldpls = FUNC4(p->portsc);
		newpls = FUNC4(value);

		p->portsc &= XHCI_PS_PED | XHCI_PS_PLS_MASK |
		             XHCI_PS_SPEED_MASK | XHCI_PS_PIC_MASK;
  
		if (FUNC2(sc, port))
			p->portsc |= XHCI_PS_CCS;

		p->portsc |= (value &
		              ~(XHCI_PS_OCA |
		                XHCI_PS_PR  |
			        XHCI_PS_PED |
			        XHCI_PS_PLS_MASK   |	/* link state */
			        XHCI_PS_SPEED_MASK |
			        XHCI_PS_PIC_MASK   |	/* port indicator */
			        XHCI_PS_LWS | XHCI_PS_DR | XHCI_PS_WPR));

		/* clear control bits */
		p->portsc &= ~(value &
		               (XHCI_PS_CSC |
		                XHCI_PS_PEC |
		                XHCI_PS_WRC |
		                XHCI_PS_OCC |
		                XHCI_PS_PRC |
		                XHCI_PS_PLC |
		                XHCI_PS_CEC |
		                XHCI_PS_CAS));

		/* port disable request; for USB3, don't care */
		if (value & XHCI_PS_PED)
			FUNC0(("Disable port %d request\r\n", port));

		if (!(value & XHCI_PS_LWS))
			break;

		FUNC0(("Port new PLS: %d\r\n", newpls));
		switch (newpls) {
		case 0: /* U0 */
		case 3: /* U3 */
			if (oldpls != newpls) {
				p->portsc &= ~XHCI_PS_PLS_MASK;
				p->portsc |= FUNC5(newpls) |
				             XHCI_PS_PLC;

				if (oldpls != 0 && newpls == 0) {
					FUNC9(&evtrb, port,
					    XHCI_TRB_ERROR_SUCCESS,
					    XHCI_TRB_EVENT_PORT_STS_CHANGE);

					FUNC7(sc, &evtrb, 1);
				}
			}
			break;

		default:
			FUNC0(("Unhandled change port %d PLS %u\r\n",
			         port, newpls));
			break;
		}
		break;
	case 4: 
		/* Port power management status and control register  */
		p->portpmsc = value;
		break;
	case 8:
		/* Port link information register */
		FUNC0(("pci_xhci attempted write to PORTLI, port %d\r\n",
		        port));
		break;
	case 12:
		/*
		 * Port hardware LPM control register.
		 * For USB3, this register is reserved.
		 */
		p->porthlpmc = value;
		break;
	}
}
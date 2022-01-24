#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xhci_trb {int dummy; } ;
struct pci_xhci_softc {int dummy; } ;
struct pci_xhci_portregs {int portsc; } ;
struct pci_xhci_dev_emu {TYPE_1__* dev_ue; } ;
struct TYPE_2__ {int ue_usbver; int /*<<< orphan*/  ue_usbspeed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct pci_xhci_dev_emu* FUNC1 (struct pci_xhci_softc*,int) ; 
 int XHCI_MAX_DEVS ; 
 struct pci_xhci_portregs* FUNC2 (struct pci_xhci_softc*,int) ; 
 int XHCI_PS_PED ; 
 int XHCI_PS_PLS_MASK ; 
 int XHCI_PS_PR ; 
 int XHCI_PS_PRC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int XHCI_PS_WRC ; 
 int XHCI_TRB_ERROR_SUCCESS ; 
 int /*<<< orphan*/  XHCI_TRB_EVENT_PORT_STS_CHANGE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct pci_xhci_softc*,struct xhci_trb*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_trb*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct pci_xhci_softc *sc, int portn, int warm)
{
	struct pci_xhci_portregs *port;
	struct pci_xhci_dev_emu	*dev;
	struct xhci_trb		evtrb;
	int	error;

	FUNC4(portn <= XHCI_MAX_DEVS);

	FUNC0(("xhci reset port %d\r\n", portn));

	port = FUNC2(sc, portn);
	dev = FUNC1(sc, portn);
	if (dev) {
		port->portsc &= ~(XHCI_PS_PLS_MASK | XHCI_PS_PR | XHCI_PS_PRC);
		port->portsc |= XHCI_PS_PED |
		    FUNC3(dev->dev_ue->ue_usbspeed);

		if (warm && dev->dev_ue->ue_usbver == 3) {
			port->portsc |= XHCI_PS_WRC;
		}

		if ((port->portsc & XHCI_PS_PRC) == 0) {
			port->portsc |= XHCI_PS_PRC;

			FUNC6(&evtrb, portn,
			     XHCI_TRB_ERROR_SUCCESS,
			     XHCI_TRB_EVENT_PORT_STS_CHANGE);
			error = FUNC5(sc, &evtrb, 1);
			if (error != XHCI_TRB_ERROR_SUCCESS)
				FUNC0(("xhci reset port insert event "
				         "failed\r\n"));
		}
	}
}
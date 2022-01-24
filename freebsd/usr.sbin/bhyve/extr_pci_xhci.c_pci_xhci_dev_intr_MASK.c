#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xhci_trb {int dummy; } ;
struct xhci_endp_ctx {int dwEpCtx0; } ;
struct xhci_dev_ctx {struct xhci_endp_ctx* ctx_ep; } ;
struct usb_hci {int /*<<< orphan*/  hci_port; struct pci_xhci_dev_emu* hci_sc; } ;
struct TYPE_4__ {int usbcmd; } ;
struct TYPE_3__ {int /*<<< orphan*/ * erstba_p; } ;
struct pci_xhci_softc {TYPE_2__ opregs; TYPE_1__ rtsregs; } ;
struct pci_xhci_portregs {int portsc; } ;
struct pci_xhci_dev_emu {struct xhci_dev_ctx* dev_ctx; struct pci_xhci_softc* xsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UPS_PORT_LS_RESUME ; 
 int XHCI_CMD_RS ; 
 struct pci_xhci_portregs* FUNC1 (struct pci_xhci_softc*,int /*<<< orphan*/ ) ; 
 int XHCI_PS_PLC ; 
 int FUNC2 (int) ; 
 int XHCI_PS_PLS_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int XHCI_ST_EPCTX_DISABLED ; 
 int XHCI_TRB_ERROR_SUCCESS ; 
 int /*<<< orphan*/  XHCI_TRB_EVENT_PORT_STS_CHANGE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_xhci_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_xhci_softc*,struct xhci_trb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_trb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct usb_hci *hci, int epctx)
{
	struct pci_xhci_dev_emu *dev;
	struct xhci_dev_ctx	*dev_ctx;
	struct xhci_trb		evtrb;
	struct pci_xhci_softc	*sc;
	struct pci_xhci_portregs *p;
	struct xhci_endp_ctx	*ep_ctx;
	int	error = 0;
	int	dir_in;
	int	epid;

	dir_in = epctx & 0x80;
	epid = epctx & ~0x80;

	/* HW endpoint contexts are 0-15; convert to epid based on dir */
	epid = (epid * 2) + (dir_in ? 1 : 0);

	FUNC4(epid >= 1 && epid <= 31);

	dev = hci->hci_sc;
	sc = dev->xsc;

	/* check if device is ready; OS has to initialise it */
	if (sc->rtsregs.erstba_p == NULL ||
	    (sc->opregs.usbcmd & XHCI_CMD_RS) == 0 ||
	    dev->dev_ctx == NULL)
		return (0);

	p = FUNC1(sc, hci->hci_port);

	/* raise event if link U3 (suspended) state */
	if (FUNC2(p->portsc) == 3) {
		p->portsc &= ~XHCI_PS_PLS_MASK;
		p->portsc |= FUNC3(UPS_PORT_LS_RESUME);
		if ((p->portsc & XHCI_PS_PLC) != 0)
			return (0);

		p->portsc |= XHCI_PS_PLC;

		FUNC7(&evtrb, hci->hci_port,
		      XHCI_TRB_ERROR_SUCCESS, XHCI_TRB_EVENT_PORT_STS_CHANGE);
		error = FUNC6(sc, &evtrb, 0);
		if (error != XHCI_TRB_ERROR_SUCCESS)
			goto done;
	}

	dev_ctx = dev->dev_ctx;
	ep_ctx = &dev_ctx->ctx_ep[epid];
	if ((ep_ctx->dwEpCtx0 & 0x7) == XHCI_ST_EPCTX_DISABLED) {
		FUNC0(("xhci device interrupt on disabled endpoint %d\r\n",
		         epid));
		return (0);
	}

	FUNC0(("xhci device interrupt on endpoint %d\r\n", epid));

	FUNC5(sc, hci->hci_port, epid, 0);

done:
	return (error);
}
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
struct vmctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pgsz; int /*<<< orphan*/  usbsts; } ;
struct pci_xhci_softc {int usb2_port_start; int usb3_port_start; int caplength; int hcsparams1; int hcsparams2; int hccparams1; int hccparams2; int dboff; int rtsoff; int regsend; int /*<<< orphan*/  mtx; TYPE_1__ opregs; scalar_t__ hcsparams3; struct pci_devinst* xsc_pi; } ;
struct pci_xhci_portregs {int dummy; } ;
struct pci_devinst {struct pci_xhci_softc* pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int /*<<< orphan*/  PCIC_SERIALBUS ; 
 int /*<<< orphan*/  PCIP_SERIALBUS_USB_XHCI ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_PROGIF ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  PCIS_SERIALBUS_USB ; 
 int /*<<< orphan*/  PCI_USBREV ; 
 int /*<<< orphan*/  PCI_USB_REV_3_0 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ XHCI_CAPLEN ; 
 int /*<<< orphan*/  XHCI_ERST_MAX ; 
 int XHCI_MAX_DEVS ; 
 int XHCI_MAX_SLOTS ; 
 int /*<<< orphan*/  XHCI_PAGESIZE_4K ; 
 scalar_t__ XHCI_PORTREGS_START ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  XHCI_STREAMS_MAX ; 
 int /*<<< orphan*/  XHCI_STS_HCH ; 
 struct pci_xhci_softc* FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_xhci_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct pci_xhci_softc*,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_xhci_softc*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int xhci_in_use ; 

__attribute__((used)) static int
FUNC27(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	struct pci_xhci_softc *sc;
	int	error;

	if (xhci_in_use) {
		FUNC1(("pci_xhci controller already defined\r\n"));
		return (-1);
	}
	xhci_in_use = 1;

	sc = FUNC17(1, sizeof(struct pci_xhci_softc));
	pi->pi_arg = sc;
	sc->xsc_pi = pi;

	sc->usb2_port_start = (XHCI_MAX_DEVS/2) + 1;
	sc->usb3_port_start = 1;

	/* discover devices */
	error = FUNC24(sc, opts);
	if (error < 0)
		goto done;
	else
		error = 0;

	sc->caplength = FUNC2(XHCI_CAPLEN) |
	                FUNC10(0x0100);
	sc->hcsparams1 = FUNC12(XHCI_MAX_DEVS) |
	                 FUNC11(1) |	/* interrupters */
	                 FUNC13(XHCI_MAX_SLOTS);
	sc->hcsparams2 = FUNC14(XHCI_ERST_MAX) |
	                 FUNC15(0x04);
	sc->hcsparams3 = 0;				/* no latency */
	sc->hccparams1 = FUNC5(1) |	/* no 2nd-streams */
	                 FUNC6(1) |	/* short packet */
	                 FUNC4(XHCI_STREAMS_MAX);
	sc->hccparams2 = FUNC8(1) |
	                 FUNC9(1);
	sc->dboff = FUNC3(XHCI_CAPLEN + XHCI_PORTREGS_START +
	            XHCI_MAX_DEVS * sizeof(struct pci_xhci_portregs));

	/* dboff must be 32-bit aligned */
	if (sc->dboff & 0x3)
		sc->dboff = (sc->dboff + 0x3) & ~0x3;

	/* rtsoff must be 32-bytes aligned */
	sc->rtsoff = FUNC16(sc->dboff + (XHCI_MAX_SLOTS+1) * 32);
	if (sc->rtsoff & 0x1F)
		sc->rtsoff = (sc->rtsoff + 0x1F) & ~0x1F;

	FUNC0(("pci_xhci dboff: 0x%x, rtsoff: 0x%x\r\n", sc->dboff,
	        sc->rtsoff));

	sc->opregs.usbsts = XHCI_STS_HCH;
	sc->opregs.pgsz = XHCI_PAGESIZE_4K;

	FUNC25(sc);

	sc->regsend = sc->rtsoff + 0x20 + 32;		/* only 1 intrpter */

	/*
	 * Set extended capabilities pointer to be after regsend;
	 * value of xecp field is 32-bit offset.
	 */
	sc->hccparams1 |= FUNC7(sc->regsend/4);

	FUNC22(pi, PCIR_DEVICE, 0x1E31);
	FUNC22(pi, PCIR_VENDOR, 0x8086);
	FUNC23(pi, PCIR_CLASS, PCIC_SERIALBUS);
	FUNC23(pi, PCIR_SUBCLASS, PCIS_SERIALBUS_USB);
	FUNC23(pi, PCIR_PROGIF,PCIP_SERIALBUS_USB_XHCI);
	FUNC23(pi, PCI_USBREV, PCI_USB_REV_3_0);

	FUNC19(pi, 1);

	/* regsend + xecp registers */
	FUNC20(pi, 0, PCIBAR_MEM32, sc->regsend + 4*32);
	FUNC0(("pci_xhci pci_emu_alloc: %d\r\n", sc->regsend + 4*32));


	FUNC21(pi);

	FUNC26(&sc->mtx, NULL);

done:
	if (error) {
		FUNC18(sc);
	}

	return (error);
}
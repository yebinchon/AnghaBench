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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct usb_page_search {int physaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  async_start_pc; int /*<<< orphan*/  pframes_pc; } ;
struct ehci_softc {int sc_eintrs; TYPE_2__ sc_bus; TYPE_1__ sc_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EHCI_ASYNCLISTADDR ; 
 int EHCI_CMD_ASE ; 
 int EHCI_CMD_FLS_M ; 
 int EHCI_CMD_ITC_1 ; 
 int EHCI_CMD_PSE ; 
 int EHCI_CMD_RS ; 
 int /*<<< orphan*/  EHCI_CONFIGFLAG ; 
 int EHCI_CONF_CF ; 
 int /*<<< orphan*/  EHCI_CTRLDSSEGMENT ; 
 int /*<<< orphan*/  EHCI_HCCPARAMS ; 
 scalar_t__ FUNC1 (int) ; 
 int EHCI_LINK_QH ; 
 int /*<<< orphan*/  EHCI_PERIODICLISTBASE ; 
 int EHCI_STS_HCH ; 
 int /*<<< orphan*/  EHCI_USBCMD ; 
 int /*<<< orphan*/  EHCI_USBINTR ; 
 int /*<<< orphan*/  EHCI_USBSTS ; 
 int FUNC2 (struct ehci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ehci_softc*,int /*<<< orphan*/ ) ; 
 int USB_ERR_IOERROR ; 
 int USB_ERR_NORMAL_COMPLETION ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 

__attribute__((used)) static int
FUNC8(struct ehci_softc *sc)
{
	struct usb_page_search buf_res;
	uint32_t cparams;
  	uint32_t hcr;
	uint8_t i;

	cparams = FUNC4(sc, EHCI_HCCPARAMS);

	FUNC0("cparams=0x%x\n", cparams);

	if (FUNC1(cparams)) {
		FUNC0("HCC uses 64-bit structures\n");

		/* MUST clear segment register if 64 bit capable */
		FUNC3(sc, EHCI_CTRLDSSEGMENT, 0);
	}

	FUNC7(&sc->sc_hw.pframes_pc, 0, &buf_res);
	FUNC3(sc, EHCI_PERIODICLISTBASE, buf_res.physaddr);

	FUNC7(&sc->sc_hw.async_start_pc, 0, &buf_res);
	FUNC3(sc, EHCI_ASYNCLISTADDR, buf_res.physaddr | EHCI_LINK_QH);

	/* enable interrupts */
	FUNC3(sc, EHCI_USBINTR, sc->sc_eintrs);

	/* turn on controller */
	FUNC3(sc, EHCI_USBCMD,
	    EHCI_CMD_ITC_1 |		/* 1 microframes interrupt delay */
	    (FUNC2(sc, EHCI_USBCMD) & EHCI_CMD_FLS_M) |
	    EHCI_CMD_ASE |
	    EHCI_CMD_PSE |
	    EHCI_CMD_RS);

	/* Take over port ownership */
	FUNC3(sc, EHCI_CONFIGFLAG, EHCI_CONF_CF);

	for (i = 0; i < 100; i++) {
		FUNC6(NULL, hz / 128);
		hcr = FUNC2(sc, EHCI_USBSTS) & EHCI_STS_HCH;
		if (!hcr) {
			break;
		}
	}
	if (hcr) {
		FUNC5(sc->sc_bus.bdev, "run timeout\n");
		return (USB_ERR_IOERROR);
	}
	return (USB_ERR_NORMAL_COMPLETION);
}
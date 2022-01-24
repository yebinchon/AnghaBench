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
struct usb_endpoint {TYPE_2__* edesc; } ;
struct TYPE_3__ {scalar_t__ usb_mode; } ;
struct usb_device {int /*<<< orphan*/  bus; TYPE_1__ flags; } ;
struct dwc_otg_softc {int* sc_in_ctl; int* sc_out_ctl; unsigned int sc_active_rx_ep; scalar_t__ sc_last_rx_status; int /*<<< orphan*/  sc_bus; } ;
struct TYPE_4__ {int bEndpointAddress; } ;

/* Variables and functions */
 int DOEPCTL_EPDIS ; 
 int DOEPCTL_STALL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 struct dwc_otg_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_otg_softc*,int,int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UE_ADDR ; 
 int UE_DIR_IN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC9 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct dwc_otg_softc*) ; 

__attribute__((used)) static void
FUNC12(struct usb_device *udev,
    struct usb_endpoint *ep, uint8_t *did_stall)
{
	struct dwc_otg_softc *sc;
	uint32_t temp;
	uint32_t reg;
	uint8_t ep_no;

	FUNC6(udev->bus, MA_OWNED);

	/* check mode */
	if (udev->flags.usb_mode != USB_MODE_DEVICE) {
		/* not supported */
		return;
	}

	sc = FUNC3(udev->bus);

	FUNC7(&sc->sc_bus);

	/* get endpoint address */
	ep_no = ep->edesc->bEndpointAddress;

	FUNC2(5, "endpoint=0x%x\n", ep_no);

	if (ep_no & UE_DIR_IN) {
		reg = FUNC0(ep_no & UE_ADDR);
		temp = sc->sc_in_ctl[ep_no & UE_ADDR];
	} else {
		reg = FUNC1(ep_no & UE_ADDR);
		temp = sc->sc_out_ctl[ep_no & UE_ADDR];
	}

	/* disable and stall endpoint */
	FUNC4(sc, reg, temp | DOEPCTL_EPDIS);
	FUNC4(sc, reg, temp | DOEPCTL_STALL);

	/* clear active OUT ep */
	if (!(ep_no & UE_DIR_IN)) {

		sc->sc_active_rx_ep &= ~(1U << (ep_no & UE_ADDR));

		if (sc->sc_last_rx_status != 0 &&
		    (ep_no & UE_ADDR) == FUNC5(
		    sc->sc_last_rx_status)) {
			/* dump data */
			FUNC9(sc);
			/* poll interrupt */
			FUNC11(sc);
			FUNC10(sc);
		}
	}
	FUNC8(&sc->sc_bus);
}
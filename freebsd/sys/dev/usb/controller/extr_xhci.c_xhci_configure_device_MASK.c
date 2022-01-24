#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  size_t uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {TYPE_2__* devs; } ;
struct xhci_softc {TYPE_3__ sc_hw; int /*<<< orphan*/  sc_exit_lat_max; } ;
struct TYPE_8__ {int /*<<< orphan*/  dwSctx3; int /*<<< orphan*/  dwSctx2; int /*<<< orphan*/  dwSctx1; int /*<<< orphan*/  dwSctx0; } ;
struct xhci_input_dev_ctx {TYPE_4__ ctx_slot; } ;
struct usb_page_search {struct xhci_input_dev_ctx* buffer; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bDeviceProtocol; } ;
struct usb_device {size_t controller_slot_id; size_t depth; int port_no; int speed; int /*<<< orphan*/  hs_port_no; struct usb_device* parent_hs_hub; TYPE_1__ ddesc; struct usb_device* parent_hub; int /*<<< orphan*/  bus; } ;
struct TYPE_6__ {scalar_t__ nports; int /*<<< orphan*/  tt; int /*<<< orphan*/  state; scalar_t__ context_num; struct usb_page_cache input_pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  UDPROTO_HSHUBMTT ; 
#define  USB_SPEED_FULL 133 
#define  USB_SPEED_HIGH 132 
#define  USB_SPEED_LOW 131 
#define  USB_SPEED_SUPER 130 
 struct xhci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (size_t) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
#define  XHCI_ST_ADDRESSED 129 
#define  XHCI_ST_CONFIGURED 128 
 int /*<<< orphan*/  FUNC16 (struct usb_page_cache*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int /*<<< orphan*/  FUNC18 (struct xhci_softc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (struct xhci_softc*,TYPE_4__*) ; 

__attribute__((used)) static usb_error_t
FUNC20(struct usb_device *udev)
{
	struct xhci_softc *sc = FUNC1(udev->bus);
	struct usb_page_search buf_inp;
	struct usb_page_cache *pcinp;
	struct xhci_input_dev_ctx *pinp;
	struct usb_device *hubdev;
	uint32_t temp;
	uint32_t route;
	uint32_t rh_port;
	uint8_t is_hub;
	uint8_t index;
	uint8_t depth;

	index = udev->controller_slot_id;

	FUNC0("index=%u\n", index);

	pcinp = &sc->sc_hw.devs[index].input_pc;

	FUNC17(pcinp, 0, &buf_inp);

	pinp = buf_inp.buffer;

	rh_port = 0;
	route = 0;

	/* figure out route string and root HUB port number */

	for (hubdev = udev; hubdev != NULL; hubdev = hubdev->parent_hub) {

		if (hubdev->parent_hub == NULL)
			break;

		depth = hubdev->parent_hub->depth;

		/*
		 * NOTE: HS/FS/LS devices and the SS root HUB can have
		 * more than 15 ports
		 */

		rh_port = hubdev->port_no;

		if (depth == 0)
			break;

		if (rh_port > 15)
			rh_port = 15;

		if (depth < 6)
			route |= rh_port << (4 * (depth - 1));
	}

	FUNC0("Route=0x%08x\n", route);

	temp = FUNC5(route) |
	    FUNC2(
	    sc->sc_hw.devs[index].context_num + 1);

	switch (udev->speed) {
	case USB_SPEED_LOW:
		temp |= FUNC6(2);
		if (udev->parent_hs_hub != NULL &&
		    udev->parent_hs_hub->ddesc.bDeviceProtocol ==
		    UDPROTO_HSHUBMTT) {
			FUNC0("Device inherits MTT\n");
			temp |= FUNC4(1);
		}
		break;
	case USB_SPEED_HIGH:
		temp |= FUNC6(3);
		if (sc->sc_hw.devs[index].nports != 0 &&
		    udev->ddesc.bDeviceProtocol == UDPROTO_HSHUBMTT) {
			FUNC0("HUB supports MTT\n");
			temp |= FUNC4(1);
		}
		break;
	case USB_SPEED_FULL:
		temp |= FUNC6(1);
		if (udev->parent_hs_hub != NULL &&
		    udev->parent_hs_hub->ddesc.bDeviceProtocol ==
		    UDPROTO_HSHUBMTT) {
			FUNC0("Device inherits MTT\n");
			temp |= FUNC4(1);
		}
		break;
	default:
		temp |= FUNC6(4);
		break;
	}

	is_hub = sc->sc_hw.devs[index].nports != 0 &&
	    (udev->speed == USB_SPEED_SUPER ||
	    udev->speed == USB_SPEED_HIGH);

	if (is_hub)
		temp |= FUNC3(1);

	FUNC18(sc, &pinp->ctx_slot.dwSctx0, temp);

	temp = FUNC9(rh_port);

	if (is_hub) {
		temp |= FUNC8(
		    sc->sc_hw.devs[index].nports);
	}

	switch (udev->speed) {
	case USB_SPEED_SUPER:
		switch (sc->sc_hw.devs[index].state) {
		case XHCI_ST_ADDRESSED:
		case XHCI_ST_CONFIGURED:
			/* enable power save */
			temp |= FUNC7(sc->sc_exit_lat_max);
			break;
		default:
			/* disable power save */
			break;
		}
		break;
	default:
		break;
	}

	FUNC18(sc, &pinp->ctx_slot.dwSctx1, temp);

	temp = FUNC10(0);

	if (is_hub) {
		temp |= FUNC13(
		    sc->sc_hw.devs[index].tt);
	}

	hubdev = udev->parent_hs_hub;

	/* check if we should activate the transaction translator */
	switch (udev->speed) {
	case USB_SPEED_FULL:
	case USB_SPEED_LOW:
		if (hubdev != NULL) {
			temp |= FUNC11(
			    hubdev->controller_slot_id);
			temp |= FUNC12(
			    udev->hs_port_no);
		}
		break;
	default:
		break;
	}

	FUNC18(sc, &pinp->ctx_slot.dwSctx2, temp);

	/*
	 * These fields should be initialized to zero, according to
	 * XHCI section 6.2.2 - slot context:
	 */
	temp = FUNC14(0) |
	    FUNC15(0);

	FUNC18(sc, &pinp->ctx_slot.dwSctx3, temp);

#ifdef USB_DEBUG
	xhci_dump_device(sc, &pinp->ctx_slot);
#endif
	FUNC16(pcinp);

	return (0);		/* success */
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {struct xhci_hw_dev* devs; } ;
struct xhci_softc {TYPE_2__ sc_bus; int /*<<< orphan*/  (* sc_port_route ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * sc_cmd_result; TYPE_1__ sc_hw; } ;
struct xhci_hw_dev {int state; int /*<<< orphan*/  device_pc; int /*<<< orphan*/  input_pc; } ;
struct xhci_endpoint_ext {int trb_halted; int /*<<< orphan*/  trb_running; } ;
struct TYPE_6__ {int /*<<< orphan*/  dwSctx3; } ;
struct xhci_dev_ctx {TYPE_3__ ctx_slot; } ;
struct usb_page_search {struct xhci_dev_ctx* buffer; int /*<<< orphan*/  physaddr; } ;
struct usb_device {size_t controller_slot_id; int /*<<< orphan*/  address; int /*<<< orphan*/  ctrl_ep_desc; int /*<<< orphan*/  bus; int /*<<< orphan*/  speed; int /*<<< orphan*/ * parent_hub; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_EP_MODE_DEFAULT ; 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 int /*<<< orphan*/  USB_ERR_IOERROR ; 
#define  USB_SPEED_FULL 132 
#define  USB_SPEED_HIGH 131 
#define  USB_SPEED_LOW 130 
 struct xhci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int XHCI_ST_ADDRESSED ; 
#define  XHCI_ST_DEFAULT 129 
#define  XHCI_ST_ENABLED 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHCI_TRB_ERROR_PARAMETER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC10 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int /*<<< orphan*/  FUNC14 (struct xhci_softc*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,int /*<<< orphan*/ *,struct xhci_endpoint_ext*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct xhci_softc*,int /*<<< orphan*/ *) ; 
 struct xhci_endpoint_ext* FUNC19 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static usb_error_t
FUNC20(struct usb_device *udev, struct mtx *mtx, uint16_t address)
{
	struct usb_page_search buf_inp;
	struct usb_page_search buf_dev;
	struct xhci_softc *sc = FUNC3(udev->bus);
	struct xhci_hw_dev *hdev;
	struct xhci_dev_ctx *pdev;
	struct xhci_endpoint_ext *pepext;
	uint32_t temp;
	uint16_t mps;
	usb_error_t err;
	uint8_t index;

	/* the root HUB case is not handled here */
	if (udev->parent_hub == NULL)
		return (USB_ERR_INVAL);

	index = udev->controller_slot_id;

	hdev = 	&sc->sc_hw.devs[index];

	if (mtx != NULL)
		FUNC10(mtx);

	FUNC4(sc);

	switch (hdev->state) {
	case XHCI_ST_DEFAULT:
	case XHCI_ST_ENABLED:

		hdev->state = XHCI_ST_ENABLED;

		/* set configure mask to slot and EP0 */
		FUNC17(udev, 3, 0);

		/* configure input slot context structure */
		err = FUNC15(udev);

		if (err != 0) {
			FUNC0("Could not configure device\n");
			break;
		}

		/* configure input endpoint context structure */
		switch (udev->speed) {
		case USB_SPEED_LOW:
		case USB_SPEED_FULL:
			mps = 8;
			break;
		case USB_SPEED_HIGH:
			mps = 64;
			break;
		default:
			mps = 512;
			break;
		}

		pepext = FUNC19(udev,
		    &udev->ctrl_ep_desc);

		/* ensure the control endpoint is setup again */
		FUNC1(udev->bus);
		pepext->trb_halted = 1;
		pepext->trb_running = 0;
		FUNC2(udev->bus);

		err = FUNC16(udev,
		    &udev->ctrl_ep_desc, pepext,
		    0, 1, 1, 0, mps, mps, USB_EP_MODE_DEFAULT);

		if (err != 0) {
			FUNC0("Could not configure default endpoint\n");
			break;
		}

		/* execute set address command */
		FUNC13(&hdev->input_pc, 0, &buf_inp);

		err = FUNC14(sc, buf_inp.physaddr,
		    (address == 0), index);

		if (err != 0) {
			temp = FUNC8(sc->sc_cmd_result[0]);
			if (address == 0 && sc->sc_port_route != NULL &&
			    FUNC7(temp) ==
			    XHCI_TRB_ERROR_PARAMETER) {
				/* LynxPoint XHCI - ports are not switchable */
				/* Un-route all ports from the XHCI */
				sc->sc_port_route(sc->sc_bus.parent, 0, ~0);
			}
			FUNC0("Could not set address "
			    "for slot %u.\n", index);
			if (address != 0)
				break;
		}

		/* update device address to new value */

		FUNC13(&hdev->device_pc, 0, &buf_dev);
		pdev = buf_dev.buffer;
		FUNC12(&hdev->device_pc);

		temp = FUNC18(sc, &pdev->ctx_slot.dwSctx3);
		udev->address = FUNC6(temp);

		/* update device state to new value */

		if (address != 0)
			hdev->state = XHCI_ST_ADDRESSED;
		else
			hdev->state = XHCI_ST_DEFAULT;
		break;

	default:
		FUNC0("Wrong state for set address.\n");
		err = USB_ERR_IOERROR;
		break;
	}
	FUNC5(sc);

	if (mtx != NULL)
		FUNC9(mtx);

	return (err);
}
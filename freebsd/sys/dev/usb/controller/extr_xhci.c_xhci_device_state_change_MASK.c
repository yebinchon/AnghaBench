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
typedef  scalar_t__ usb_error_t ;
typedef  size_t uint8_t ;
struct TYPE_4__ {TYPE_1__* devs; } ;
struct xhci_softc {TYPE_2__ sc_hw; } ;
struct usb_page_search {int /*<<< orphan*/  physaddr; } ;
struct usb_device {size_t controller_slot_id; int /*<<< orphan*/ * parent_hub; int /*<<< orphan*/  bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  input_pc; int /*<<< orphan*/  context_num; int /*<<< orphan*/  state; scalar_t__ nports; int /*<<< orphan*/  tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  USB_STATE_ADDRESSED 130 
#define  USB_STATE_CONFIGURED 129 
#define  USB_STATE_POWERED 128 
 struct xhci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_softc*) ; 
 int /*<<< orphan*/  XHCI_ST_ADDRESSED ; 
 int /*<<< orphan*/  XHCI_ST_CONFIGURED ; 
 int /*<<< orphan*/  XHCI_ST_DEFAULT ; 
 scalar_t__ FUNC4 (struct usb_device*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 scalar_t__ FUNC7 (struct xhci_softc*,int /*<<< orphan*/ ,int,size_t) ; 
 scalar_t__ FUNC8 (struct xhci_softc*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC9 (struct xhci_softc*,size_t) ; 
 scalar_t__ FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct usb_device *udev)
{
	struct xhci_softc *sc = FUNC1(udev->bus);
	struct usb_page_search buf_inp;
	usb_error_t err;
	uint8_t index;

	/* check for root HUB */
	if (udev->parent_hub == NULL)
		return;

	index = udev->controller_slot_id;

	FUNC0("\n");

	if (FUNC5(udev) == USB_STATE_CONFIGURED) {
		err = FUNC4(udev, &sc->sc_hw.devs[index].nports, 
		    &sc->sc_hw.devs[index].tt);
		if (err != 0)
			sc->sc_hw.devs[index].nports = 0;
	}

	FUNC2(sc);

	switch (FUNC5(udev)) {
	case USB_STATE_POWERED:
		if (sc->sc_hw.devs[index].state == XHCI_ST_DEFAULT)
			break;

		/* set default state */
		sc->sc_hw.devs[index].state = XHCI_ST_DEFAULT;

		/* reset number of contexts */
		sc->sc_hw.devs[index].context_num = 0;

		err = FUNC9(sc, index);

		if (err != 0) {
			FUNC0("Device reset failed "
			    "for slot %u.\n", index);
		}
		break;

	case USB_STATE_ADDRESSED:
		if (sc->sc_hw.devs[index].state == XHCI_ST_ADDRESSED)
			break;

		sc->sc_hw.devs[index].state = XHCI_ST_ADDRESSED;

		/* set configure mask to slot only */
		FUNC11(udev, 1, 0);

		/* deconfigure all endpoints, except EP0 */
		err = FUNC7(sc, 0, 1, index);

		if (err) {
			FUNC0("Failed to deconfigure "
			    "slot %u.\n", index);
		}
		break;

	case USB_STATE_CONFIGURED:
		if (sc->sc_hw.devs[index].state == XHCI_ST_CONFIGURED)
			break;

		/* set configured state */
		sc->sc_hw.devs[index].state = XHCI_ST_CONFIGURED;

		/* reset number of contexts */
		sc->sc_hw.devs[index].context_num = 0;

		FUNC6(&sc->sc_hw.devs[index].input_pc, 0, &buf_inp);

		FUNC11(udev, 3, 0);

		err = FUNC10(udev);
		if (err != 0) {
			FUNC0("Could not configure device "
			    "at slot %u.\n", index);
		}

		err = FUNC8(sc, buf_inp.physaddr, index);
		if (err != 0) {
			FUNC0("Could not evaluate device "
			    "context at slot %u.\n", index);
		}
		break;

	default:
		break;
	}
	FUNC3(sc);
}
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
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
struct TYPE_6__ {scalar_t__ usb_mode; } ;
struct usb_device {TYPE_3__ flags; TYPE_1__* hub; int /*<<< orphan*/  bus; } ;
struct TYPE_5__ {int port_status; } ;
struct uhub_softc {TYPE_2__ sc_st; struct usb_device* sc_udev; } ;
struct TYPE_4__ {int ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  UHF_C_PORT_LINK_STATE ; 
 int /*<<< orphan*/  UHF_C_PORT_SUSPEND ; 
 int FUNC1 (int) ; 
#define  UPS_PORT_LS_SS_INA 129 
#define  UPS_PORT_LS_U3 128 
 int UPS_SUSPEND ; 
 scalar_t__ USB_MODE_DEVICE ; 
 scalar_t__ FUNC2 (struct uhub_softc*,int) ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 scalar_t__ FUNC6 (struct usb_device*) ; 
 scalar_t__ FUNC7 (struct usb_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC9(struct uhub_softc *sc, uint8_t portno)
{
	struct usb_device *child;
	struct usb_device *udev;
	uint8_t is_suspend;
	usb_error_t err;

	FUNC0("port %d\n", portno);

	udev = sc->sc_udev;
	child = FUNC3(udev->bus,
	    udev->hub->ports + portno - 1);

	/* first clear the port suspend change bit */

	if (FUNC6(udev)) {
		err = FUNC7(udev, NULL,
		    portno, UHF_C_PORT_SUSPEND);
	} else {
		err = FUNC7(udev, NULL,
		    portno, UHF_C_PORT_LINK_STATE);
	}

	if (err) {
		FUNC0("clearing suspend failed.\n");
		goto done;
	}
	/* get fresh status */

	err = FUNC2(sc, portno);
	if (err) {
		FUNC0("reading port status failed.\n");
		goto done;
	}
	/* convert current state */

	if (FUNC6(udev)) {
		if (sc->sc_st.port_status & UPS_SUSPEND) {
			is_suspend = 1;
		} else {
			is_suspend = 0;
		}
	} else {
		switch (FUNC1(sc->sc_st.port_status)) {
		case UPS_PORT_LS_U3:
			is_suspend = 1;
			break;
		case UPS_PORT_LS_SS_INA:
			FUNC8(udev, NULL, portno);
			is_suspend = 0;
			break;
		default:
			is_suspend = 0;
			break;
		}
	}

	FUNC0("suspended=%u\n", is_suspend);

	/* do the suspend or resume */

	if (child) {
		/*
		 * This code handle two cases: 1) Host Mode - we can only
		 * receive resume here 2) Device Mode - we can receive
		 * suspend and resume here
		 */
		if (is_suspend == 0)
			FUNC4(child);
		else if (child->flags.usb_mode == USB_MODE_DEVICE)
			FUNC5(child);
	}
done:
	return (err);
}
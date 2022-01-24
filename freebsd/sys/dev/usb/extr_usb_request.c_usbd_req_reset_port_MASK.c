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
typedef  scalar_t__ usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct usb_port_status {int /*<<< orphan*/  wPortChange; int /*<<< orphan*/  wPortStatus; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UHF_C_PORT_RESET ; 
 int /*<<< orphan*/  UHF_PORT_RESET ; 
 int UPS_CURRENT_CONNECT_STATUS ; 
 int UPS_C_PORT_RESET ; 
 int UPS_RESET ; 
 scalar_t__ USB_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*,int /*<<< orphan*/ ) ; 
 scalar_t__ usb_port_reset_delay ; 
 scalar_t__ usb_port_reset_recovery ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct usb_device*,struct mtx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct usb_device*,struct mtx*,struct usb_port_status*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct usb_device*,struct mtx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

usb_error_t
FUNC9(struct usb_device *udev, struct mtx *mtx, uint8_t port)
{
	struct usb_port_status ps;
	usb_error_t err;
	uint16_t n;
	uint16_t status;
	uint16_t change;

	FUNC0("\n");

	/* clear any leftover port reset changes first */
	FUNC6(
	    udev, mtx, port, UHF_C_PORT_RESET);

	/* assert port reset on the given port */
	err = FUNC8(
	    udev, mtx, port, UHF_PORT_RESET);

	/* check for errors */
	if (err)
		goto done;
	n = 0;
	while (1) {
		/* wait for the device to recover from reset */
		FUNC4(mtx, FUNC3(usb_port_reset_delay));
		n += usb_port_reset_delay;
		err = FUNC7(udev, mtx, &ps, port);
		if (err)
			goto done;

		status = FUNC2(ps.wPortStatus);
		change = FUNC2(ps.wPortChange);

		/* if the device disappeared, just give up */
		if (!(status & UPS_CURRENT_CONNECT_STATUS))
			goto done;

		/* check if reset is complete */
		if (change & UPS_C_PORT_RESET)
			break;

		/*
		 * Some Virtual Machines like VirtualBox 4.x fail to
		 * generate a port reset change event. Check if reset
		 * is no longer asserted.
		 */
		if (!(status & UPS_RESET))
			break;

		/* check for timeout */
		if (n > 1000) {
			n = 0;
			break;
		}
	}

	/* clear port reset first */
	err = FUNC6(
	    udev, mtx, port, UHF_C_PORT_RESET);
	if (err)
		goto done;

	/* check for timeout */
	if (n == 0) {
		err = USB_ERR_TIMEOUT;
		goto done;
	}
	/* wait for the device to recover from reset */
	FUNC4(mtx, FUNC3(usb_port_reset_recovery));

done:
	FUNC1(2, "port %d reset returning error=%s\n",
	    port, FUNC5(err));
	return (err);
}
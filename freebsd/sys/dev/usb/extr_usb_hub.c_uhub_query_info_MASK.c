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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
struct usb_hub_ss_descriptor {int bNbrPorts; } ;
struct usb_hub_descriptor {int bNbrPorts; int /*<<< orphan*/  wHubCharacteristics; } ;
struct TYPE_2__ {scalar_t__ bDeviceClass; } ;
struct usb_device {int speed; TYPE_1__ ddesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ UDCLASS_HUB ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
#define  USB_SPEED_FULL 131 
#define  USB_SPEED_HIGH 130 
#define  USB_SPEED_LOW 129 
#define  USB_SPEED_SUPER 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ *,struct usb_hub_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ *,struct usb_hub_ss_descriptor*,int) ; 

usb_error_t
FUNC5(struct usb_device *udev, uint8_t *pnports, uint8_t *ptt)
{
	struct usb_hub_descriptor hubdesc20;
	struct usb_hub_ss_descriptor hubdesc30;
	usb_error_t err;
	uint8_t nports;
	uint8_t tt;

	if (udev->ddesc.bDeviceClass != UDCLASS_HUB)
		return (USB_ERR_INVAL);

	nports = 0;
	tt = 0;

	switch (udev->speed) {
	case USB_SPEED_LOW:
	case USB_SPEED_FULL:
	case USB_SPEED_HIGH:
		/* assuming that there is one port */
		err = FUNC3(udev, NULL, &hubdesc20, 1);
		if (err) {
			FUNC0(0, "getting USB 2.0 HUB descriptor failed,"
			    "error=%s\n", FUNC2(err));
			break;
		}
		nports = hubdesc20.bNbrPorts;
		if (nports > 127)
			nports = 127;

		if (udev->speed == USB_SPEED_HIGH)
			tt = (FUNC1(hubdesc20.wHubCharacteristics) >> 5) & 3;
		break;

	case USB_SPEED_SUPER:
		err = FUNC4(udev, NULL, &hubdesc30, 1);
		if (err) {
			FUNC0(0, "Getting USB 3.0 HUB descriptor failed,"
			    "error=%s\n", FUNC2(err));
			break;
		}
		nports = hubdesc30.bNbrPorts;
		if (nports > 16)
			nports = 16;
		break;

	default:
		err = USB_ERR_INVAL;
		break;
	}

	if (pnports != NULL)
		*pnports = nports;

	if (ptt != NULL)
		*ptt = tt;

	return (err);
}
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
typedef  int uint16_t ;
struct usb_device_descriptor {int bDeviceClass; int bDeviceSubClass; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  bcdUSB; } ;
struct usb_device {int address; struct usb_device_descriptor ddesc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,int,int,int,int,int,...) ; 
 char* FUNC2 (struct usb_device*) ; 
 char* FUNC3 (struct usb_device*) ; 

void
FUNC4(struct usb_device *udev, char *dst_ptr, uint16_t dst_len)
{
	struct usb_device_descriptor *udd = &udev->ddesc;
	uint16_t bcdDevice;
	uint16_t bcdUSB;

	bcdUSB = FUNC0(udd->bcdUSB);
	bcdDevice = FUNC0(udd->bcdDevice);

	if (udd->bDeviceClass != 0xFF) {
		FUNC1(dst_ptr, dst_len, "%s %s, class %d/%d, rev %x.%02x/"
		    "%x.%02x, addr %d",
		    FUNC2(udev),
		    FUNC3(udev),
		    udd->bDeviceClass, udd->bDeviceSubClass,
		    (bcdUSB >> 8), bcdUSB & 0xFF,
		    (bcdDevice >> 8), bcdDevice & 0xFF,
		    udev->address);
	} else {
		FUNC1(dst_ptr, dst_len, "%s %s, rev %x.%02x/"
		    "%x.%02x, addr %d",
		    FUNC2(udev),
		    FUNC3(udev),
		    (bcdUSB >> 8), bcdUSB & 0xFF,
		    (bcdDevice >> 8), bcdDevice & 0xFF,
		    udev->address);
	}
}
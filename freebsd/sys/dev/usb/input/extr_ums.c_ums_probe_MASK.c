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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; TYPE_1__ info; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ UICLASS_HID ; 
 scalar_t__ UIPROTO_MOUSE ; 
 scalar_t__ UISUBCLASS_BOOT ; 
 int /*<<< orphan*/  UQ_UMS_IGNORE ; 
 scalar_t__ USB_MODE_HOST ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct usb_attach_arg*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	void *d_ptr;
	int error;
	uint16_t d_len;

	FUNC0(11, "\n");

	if (uaa->usb_mode != USB_MODE_HOST)
		return (ENXIO);

	if (uaa->info.bInterfaceClass != UICLASS_HID)
		return (ENXIO);

	if (FUNC4(uaa, UQ_UMS_IGNORE))
		return (ENXIO);

	if ((uaa->info.bInterfaceSubClass == UISUBCLASS_BOOT) &&
	    (uaa->info.bInterfaceProtocol == UIPROTO_MOUSE))
		return (BUS_PROBE_DEFAULT);

	error = FUNC5(uaa->device, NULL,
	    &d_ptr, &d_len, M_TEMP, uaa->info.bIfaceIndex);

	if (error)
		return (ENXIO);

	if (FUNC3(d_ptr, d_len))
		error = BUS_PROBE_DEFAULT;
	else
		error = ENXIO;

	FUNC2(d_ptr, M_TEMP);
	return (error);
}
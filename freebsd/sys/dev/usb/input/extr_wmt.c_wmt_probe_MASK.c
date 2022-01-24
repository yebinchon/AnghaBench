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
struct TYPE_2__ {scalar_t__ bInterfaceClass; int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; TYPE_1__ info; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ UICLASS_HID ; 
 int /*<<< orphan*/  UQ_WMT_IGNORE ; 
 scalar_t__ USB_MODE_HOST ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct usb_attach_arg*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC0(dev);
	void *d_ptr;
	uint16_t d_len;
	int err;

	if (uaa->usb_mode != USB_MODE_HOST)
		return (ENXIO);

	if (uaa->info.bInterfaceClass != UICLASS_HID)
		return (ENXIO);

	if (FUNC2(uaa, UQ_WMT_IGNORE))
		return (ENXIO);

	err = FUNC3(uaa->device, NULL,
	    &d_ptr, &d_len, M_TEMP, uaa->info.bIfaceIndex);
	if (err)
		return (ENXIO);

	if (FUNC4(NULL, d_ptr, d_len))
		err = BUS_PROBE_DEFAULT;
	else
		err = ENXIO;

	FUNC1(d_ptr, M_TEMP);
	return (err);
}
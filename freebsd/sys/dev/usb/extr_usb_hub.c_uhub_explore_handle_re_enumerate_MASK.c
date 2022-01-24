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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int re_enumerate_wait; int /*<<< orphan*/  next_config_index; int /*<<< orphan*/  port_no; int /*<<< orphan*/ * parent_hub; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  UHF_PORT_ENABLE ; 
 int /*<<< orphan*/  USB_IFACE_INDEX_ANY ; 
 scalar_t__ USB_MODE_HOST ; 
 void* USB_RE_ENUM_DONE ; 
#define  USB_RE_ENUM_PWR_OFF 130 
#define  USB_RE_ENUM_SET_CONFIG 129 
#define  USB_RE_ENUM_START 128 
 int /*<<< orphan*/  USB_UNCONFIG_INDEX ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 

void
FUNC9(struct usb_device *child)
{
	uint8_t do_unlock;
	usb_error_t err;

	/* check if device should be re-enumerated */
	if (child->flags.usb_mode != USB_MODE_HOST)
		return;

	do_unlock = FUNC3(child);
	switch (child->re_enumerate_wait) {
	case USB_RE_ENUM_START:
		err = FUNC8(child,
		    USB_UNCONFIG_INDEX);
		if (err != 0) {
			FUNC0("Unconfigure failed: %s: Ignored.\n",
			    FUNC5(err));
		}
		if (child->parent_hub == NULL) {
			/* the root HUB cannot be re-enumerated */
			FUNC1(6, "cannot reset root HUB\n");
			err = 0;
		} else {
			err = FUNC7(child, NULL);
		}
		if (err == 0)
			err = FUNC8(child, 0);
		if (err == 0) {
			err = FUNC2(child,
			    USB_IFACE_INDEX_ANY);
		}
		child->re_enumerate_wait = USB_RE_ENUM_DONE;
		break;

	case USB_RE_ENUM_PWR_OFF:
		/* get the device unconfigured */
		err = FUNC8(child,
		    USB_UNCONFIG_INDEX);
		if (err) {
			FUNC1(0, "Could not unconfigure "
			    "device (ignored)\n");
		}
		if (child->parent_hub == NULL) {
			/* the root HUB cannot be re-enumerated */
			FUNC1(6, "cannot set port feature\n");
			err = 0;
		} else {
			/* clear port enable */
			err = FUNC6(child->parent_hub,
			    NULL, child->port_no, UHF_PORT_ENABLE);
			if (err) {
				FUNC1(0, "Could not disable port "
				    "(ignored)\n");
			}
		}
		child->re_enumerate_wait = USB_RE_ENUM_DONE;
		break;

	case USB_RE_ENUM_SET_CONFIG:
		err = FUNC8(child,
		    child->next_config_index);
		if (err != 0) {
			FUNC0("Configure failed: %s: Ignored.\n",
			    FUNC5(err));
		} else {
			err = FUNC2(child,
			    USB_IFACE_INDEX_ANY);
		}
		child->re_enumerate_wait = USB_RE_ENUM_DONE;
		break;

	default:
		child->re_enumerate_wait = USB_RE_ENUM_DONE;
		break;
	}
	if (do_unlock)
		FUNC4(child);
}
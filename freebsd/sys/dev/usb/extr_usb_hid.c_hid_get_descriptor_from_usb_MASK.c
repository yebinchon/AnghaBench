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
struct usb_interface_descriptor {int dummy; } ;
typedef  void usb_hid_descriptor ;
struct usb_descriptor {scalar_t__ bDescriptorType; scalar_t__ bLength; } ;
struct usb_config_descriptor {int dummy; } ;

/* Variables and functions */
 scalar_t__ UDESC_HID ; 
 scalar_t__ UDESC_INTERFACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_descriptor* FUNC1 (struct usb_config_descriptor*,struct usb_descriptor*) ; 

struct usb_hid_descriptor *
FUNC2(struct usb_config_descriptor *cd,
    struct usb_interface_descriptor *id)
{
	struct usb_descriptor *desc = (void *)id;

	if (desc == NULL) {
		return (NULL);
	}
	while ((desc = FUNC1(cd, desc))) {
		if ((desc->bDescriptorType == UDESC_HID) &&
		    (desc->bLength >= FUNC0(0))) {
			return (void *)desc;
		}
		if (desc->bDescriptorType == UDESC_INTERFACE) {
			break;
		}
	}
	return (NULL);
}
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
typedef  int uint8_t ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; int bInterfaceNumber; } ;
struct usb_interface {int dummy; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ UICLASS_CDC_DATA ; 
 scalar_t__ UISUBCLASS_DATA ; 
 struct usb_interface* FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct usb_interface_descriptor* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static void
FUNC3(struct usb_attach_arg *uaa,
    uint8_t iface_index, uint8_t *p_data_no, uint8_t *p_match_class)
{
	struct usb_interface_descriptor *id;
	struct usb_interface *iface;
	
	iface = FUNC1(uaa->device, iface_index);

	/* check for end of interfaces */
	if (iface == NULL)
		return;

	id = FUNC2(iface);

	/* check for non-matching interface class */
	if (id->bInterfaceClass != UICLASS_CDC_DATA ||
	    id->bInterfaceSubClass != UISUBCLASS_DATA) {
		/* if we got a class match then return */
		if (*p_match_class)
			return;
	} else {
		*p_match_class = 1;
	}

	FUNC0(11, "Match at index %u\n", iface_index);

	*p_data_no = id->bInterfaceNumber;
}
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
struct usb_endpoint_ss_comp_descriptor {int dummy; } ;
struct usb_descriptor {scalar_t__ bDescriptorType; int bLength; } ;
struct usb_config_descriptor {int dummy; } ;

/* Variables and functions */
 scalar_t__ UDESC_ENDPOINT ; 
 scalar_t__ UDESC_ENDPOINT_SS_COMP ; 
 scalar_t__ UDESC_INTERFACE ; 
 struct usb_descriptor* FUNC0 (struct usb_config_descriptor*,struct usb_descriptor*) ; 

struct usb_endpoint_ss_comp_descriptor *
FUNC1(struct usb_config_descriptor *cd,
    struct usb_endpoint_ss_comp_descriptor *ped)
{
	struct usb_descriptor *desc;

	desc = ((struct usb_descriptor *)ped);

	while ((desc = FUNC0(cd, desc))) {
		if (desc->bDescriptorType == UDESC_INTERFACE)
			break;
		if (desc->bDescriptorType == UDESC_ENDPOINT)
			break;
		if (desc->bDescriptorType == UDESC_ENDPOINT_SS_COMP) {
			if (desc->bLength < sizeof(*ped)) {
				/* endpoint companion descriptor is invalid */
				break;
			}
			return ((struct usb_endpoint_ss_comp_descriptor *)desc);
		}
	}
	return (NULL);
}
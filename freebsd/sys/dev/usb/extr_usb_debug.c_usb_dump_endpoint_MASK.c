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
struct usb_endpoint {int isoc_next; int toggle_next; TYPE_1__* edesc; } ;
struct TYPE_2__ {int bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_endpoint*) ; 

void
FUNC2(struct usb_endpoint *ep)
{
	if (ep) {
		FUNC0("usb_dump_endpoint: endpoint=%p", ep);

		FUNC0(" edesc=%p isoc_next=%d toggle_next=%d",
		    ep->edesc, ep->isoc_next, ep->toggle_next);

		if (ep->edesc) {
			FUNC0(" bEndpointAddress=0x%02x",
			    ep->edesc->bEndpointAddress);
		}
		FUNC0("\n");
		FUNC1(ep);
	} else {
		FUNC0("usb_dump_endpoint: endpoint=NULL\n");
	}
}
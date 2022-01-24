#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_bus {TYPE_3__* reset_msg; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int /*<<< orphan*/ * tqe_prev; } ;
struct TYPE_5__ {TYPE_2__ pm_qentry; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*) ; 

void
FUNC5(struct usb_bus *bus)
{
	FUNC2(bus, MA_OWNED);

	FUNC0("\n");

	if (bus->reset_msg[0].hdr.pm_qentry.tqe_prev != NULL ||
	    bus->reset_msg[1].hdr.pm_qentry.tqe_prev != NULL) {
		FUNC0("Reset already pending\n");
		return;
	}

	FUNC3(bus->parent, "Resetting controller\n");

	FUNC4(FUNC1(bus),
	    &bus->reset_msg[0], &bus->reset_msg[1]);
}
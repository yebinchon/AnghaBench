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
struct usb_bus {int /*<<< orphan*/  parent; int /*<<< orphan*/ * ifp; } ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbpf_cloner ; 

void
FUNC2(struct usb_bus *ubus)
{

	if (ubus->ifp != NULL)
		FUNC1(usbpf_cloner, ubus->ifp);
	if (bootverbose)
		FUNC0(ubus->parent, "usbpf: Detached\n");
}
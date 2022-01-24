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

/* Variables and functions */
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * usb_quirk_ioctl_p ; 
 int /*<<< orphan*/  usb_quirk_ioctl_w ; 
 int /*<<< orphan*/ * usb_test_quirk_p ; 
 int /*<<< orphan*/  usb_test_quirk_w ; 

void
FUNC1(void *arg)
{
	/* reset function pointers */

	usb_test_quirk_p = &usb_test_quirk_w;
	usb_quirk_ioctl_p = &usb_quirk_ioctl_w;

	/* wait for CPU to exit the loaded functions, if any */

	/* XXX this is a tradeoff */

	FUNC0("WAIT", hz);
}
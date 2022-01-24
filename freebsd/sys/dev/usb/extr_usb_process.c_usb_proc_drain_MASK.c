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
struct usb_process {int up_gone; int /*<<< orphan*/ * up_mtx; int /*<<< orphan*/  up_drain; scalar_t__ up_dsleep; int /*<<< orphan*/  up_cv; scalar_t__ up_ptr; scalar_t__ up_csleep; scalar_t__ up_msleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(struct usb_process *up)
{
	/* check if not initialised */
	if (up->up_mtx == NULL)
		return;
	/* handle special case with Giant */
	if (up->up_mtx != &Giant)
		FUNC1(up->up_mtx, MA_NOTOWNED);

	FUNC2(up->up_mtx);

	/* Set the gone flag */

	up->up_gone = 1;

	while (up->up_ptr) {

		/* Check if we need to wakeup the USB process */

		if (up->up_msleep || up->up_csleep) {
			up->up_msleep = 0;
			up->up_csleep = 0;
			FUNC6(&up->up_cv);
		}
#ifndef EARLY_AP_STARTUP
		/* Check if we are still cold booted */
		if (cold) {
			FUNC4(up->up_ptr);
			FUNC8("WARNING: A USB process has "
			    "been left suspended\n");
			break;
		}
#endif
		FUNC7(&up->up_cv, up->up_mtx);
	}
	/* Check if someone is waiting - should not happen */

	if (up->up_dsleep) {
		up->up_dsleep = 0;
		FUNC5(&up->up_drain);
		FUNC0("WARNING: Someone is waiting "
		    "for USB process drain!\n");
	}
	FUNC3(up->up_mtx);
}
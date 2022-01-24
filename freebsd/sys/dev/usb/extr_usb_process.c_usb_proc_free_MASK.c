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
struct usb_process {int /*<<< orphan*/ * up_mtx; int /*<<< orphan*/  up_drain; int /*<<< orphan*/  up_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_process*) ; 

void
FUNC2(struct usb_process *up)
{
	/* check if not initialised */
	if (up->up_mtx == NULL)
		return;

	FUNC1(up);

	FUNC0(&up->up_cv);
	FUNC0(&up->up_drain);

	/* make sure that we do not enter here again */
	up->up_mtx = NULL;
}
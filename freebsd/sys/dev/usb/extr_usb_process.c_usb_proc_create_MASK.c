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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_process {int /*<<< orphan*/ * up_ptr; int /*<<< orphan*/  up_drain; int /*<<< orphan*/  up_cv; int /*<<< orphan*/  up_qhead; int /*<<< orphan*/  up_prio; struct mtx* up_mtx; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct usb_process*,int /*<<< orphan*/ **,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  usb_pcount ; 
 int /*<<< orphan*/  FUNC4 (struct usb_process*) ; 
 int /*<<< orphan*/  usb_process ; 

int
FUNC5(struct usb_process *up, struct mtx *p_mtx,
    const char *pmesg, uint8_t prio)
{
	up->up_mtx = p_mtx;
	up->up_prio = prio;

	FUNC1(&up->up_qhead);

	FUNC3(&up->up_cv, "-");
	FUNC3(&up->up_drain, "usbdrain");

	if (FUNC2(&usb_process, up,
	    &up->up_ptr, "%s", pmesg)) {
		FUNC0(0, "Unable to create USB process.");
		up->up_ptr = NULL;
		goto error;
	}
#if (__FreeBSD_version >= 800000)
	usb_pcount++;
#endif
	return (0);

error:
	FUNC4(up);
	return (ENOMEM);
}
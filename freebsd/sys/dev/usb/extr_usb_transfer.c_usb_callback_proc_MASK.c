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
struct TYPE_2__ {int /*<<< orphan*/  curr; } ;
struct usb_xfer_root {int /*<<< orphan*/  xfer_mtx; TYPE_1__ done_q; int /*<<< orphan*/  bus; } ;
struct usb_proc_msg {int dummy; } ;
struct usb_done_msg {struct usb_xfer_root* xroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_proc_msg *_pm)
{
	struct usb_done_msg *pm = (void *)_pm;
	struct usb_xfer_root *info = pm->xroot;

	/* Change locking order */
	FUNC1(info->bus);

	/*
	 * We exploit the fact that the mutex is the same for all
	 * callbacks that will be called from this thread:
	 */
	FUNC2(info->xfer_mtx);
	FUNC0(info->bus);

	/* Continue where we lost track */
	FUNC4(&info->done_q,
	    info->done_q.curr);

	FUNC3(info->xfer_mtx);
}
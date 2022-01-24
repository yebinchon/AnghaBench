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
typedef  int /*<<< orphan*/  usb_proc_callback_t ;
struct usb_proc_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pm_callback; } ;
struct usb_ether_cfg_task {struct usb_ether* ue; TYPE_1__ hdr; } ;
struct usb_ether {int /*<<< orphan*/  ue_tq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ether*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ue_start_task ; 
 int /*<<< orphan*/ * ue_stop_task ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct usb_proc_msg*,struct usb_proc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct usb_proc_msg*,struct usb_proc_msg*) ; 

__attribute__((used)) static void
FUNC4(struct usb_ether *ue,
    usb_proc_callback_t *fn,
    struct usb_proc_msg *t0, struct usb_proc_msg *t1)
{
	struct usb_ether_cfg_task *task;

	FUNC0(ue, MA_OWNED);

	if (FUNC1(&ue->ue_tq)) {
		return;         /* nothing to do */
	}
	/* 
	 * NOTE: The task cannot get executed before we drop the
	 * "sc_mtx" mutex. It is safe to update fields in the message
	 * structure after that the message got queued.
	 */
	task = (struct usb_ether_cfg_task *)
	  FUNC2(&ue->ue_tq, t0, t1);

	/* Setup callback and self pointers */
	task->hdr.pm_callback = fn;
	task->ue = ue;

	/*
	 * Start and stop must be synchronous!
	 */
	if ((fn == ue_start_task) || (fn == ue_stop_task))
		FUNC3(&ue->ue_tq, t0, t1);
}
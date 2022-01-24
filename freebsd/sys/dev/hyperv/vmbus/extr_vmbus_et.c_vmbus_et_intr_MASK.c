#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int dummy; } ;
struct thread {int /*<<< orphan*/  td_intr_nesting_level; struct trapframe* td_intr_frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  et_arg; int /*<<< orphan*/  (* et_event_cb ) (TYPE_1__*,int /*<<< orphan*/ ) ;scalar_t__ et_active; } ;

/* Variables and functions */
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ vmbus_et ; 

void
FUNC1(struct trapframe *frame)
{
	struct trapframe *oldframe;
	struct thread *td;

	if (vmbus_et.et_active) {
		td = curthread;
		td->td_intr_nesting_level++;
		oldframe = td->td_intr_frame;
		td->td_intr_frame = frame;
		vmbus_et.et_event_cb(&vmbus_et, vmbus_et.et_arg);
		td->td_intr_frame = oldframe;
		td->td_intr_nesting_level--;
	}
}
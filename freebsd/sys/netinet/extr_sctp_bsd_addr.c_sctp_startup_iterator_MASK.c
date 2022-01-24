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
struct TYPE_2__ {scalar_t__ thread_proc; int /*<<< orphan*/  iteratorhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFPROC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SCTP_KTHREAD_PAGES ; 
 int /*<<< orphan*/  SCTP_KTRHEAD_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ sctp_it_ctl ; 
 int /*<<< orphan*/  sctp_iterator_thread ; 

void
FUNC4(void)
{
	if (sctp_it_ctl.thread_proc) {
		/* You only get one */
		return;
	}
	/* Initialize global locks here, thus only once. */
	FUNC1();
	FUNC0();
	FUNC2(&sctp_it_ctl.iteratorhead);
	FUNC3(sctp_iterator_thread,
	    (void *)NULL,
	    &sctp_it_ctl.thread_proc,
	    RFPROC,
	    SCTP_KTHREAD_PAGES,
	    SCTP_KTRHEAD_NAME);
}
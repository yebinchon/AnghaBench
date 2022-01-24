#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {scalar_t__ num_rq_threads; TYPE_1__* rq_thread_info; int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_2__ ocs_xport_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_4__ {int /*<<< orphan*/ * seq_cbuf; scalar_t__ thread_started; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(ocs_xport_t *xport)
{
	ocs_t *ocs = xport->ocs;
	uint32_t i;

	if (xport->num_rq_threads == 0 ||
	    xport->rq_thread_info == NULL) {
		return;
	}

	/* Abort any threads */
	for (i = 0; i < xport->num_rq_threads; i++) {
		if (xport->rq_thread_info[i].thread_started) {
			FUNC2(&xport->rq_thread_info[i].thread);
			/* wait for the thread to exit */
			FUNC1(ocs, "wait for thread %d to exit\n", i);
			while (xport->rq_thread_info[i].thread_started) {
				FUNC3(10000);
			}
			FUNC1(ocs, "thread %d to exited\n", i);
		}
		if (xport->rq_thread_info[i].seq_cbuf != NULL) {
			FUNC0(xport->rq_thread_info[i].seq_cbuf);
			xport->rq_thread_info[i].seq_cbuf = NULL;
		}
	}
}
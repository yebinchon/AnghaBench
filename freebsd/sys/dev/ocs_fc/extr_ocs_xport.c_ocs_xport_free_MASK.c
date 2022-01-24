#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {TYPE_1__* fcfi; TYPE_5__ io_pending_lock; int /*<<< orphan*/  io_pool; int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_2__ ocs_xport_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_7__ {TYPE_5__ pend_frames_lock; } ;

/* Variables and functions */
 size_t SLI4_MAX_FCFI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6(ocs_xport_t *xport)
{
	ocs_t *ocs;
	uint32_t i;

	if (xport) {
		ocs = xport->ocs;
		FUNC2(xport->io_pool);
		FUNC4(ocs);
		if(FUNC0(&xport->io_pending_lock.lock))
			FUNC3(&xport->io_pending_lock);

		for (i = 0; i < SLI4_MAX_FCFI; i++) {
			FUNC3(&xport->fcfi[i].pend_frames_lock);
		}

		FUNC5(xport);

		FUNC1(ocs, xport, sizeof(*xport));
	}
}
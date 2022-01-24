#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  io_pending_lock; int /*<<< orphan*/  io_total_pending; int /*<<< orphan*/  io_pending_count; int /*<<< orphan*/  io_pending_list; } ;
typedef  TYPE_1__ ocs_xport_t ;
struct TYPE_9__ {TYPE_1__* xport; } ;
typedef  TYPE_2__ ocs_t ;
struct TYPE_10__ {scalar_t__ io_type; void* hw_cb; TYPE_2__* ocs; } ;
typedef  TYPE_3__ ocs_io_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ OCS_IO_TYPE_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int32_t
FUNC8(ocs_io_t *io, void *cb)
{
	ocs_t *ocs = io->ocs;
	ocs_xport_t *xport = ocs->xport;

	FUNC0((io->io_type == OCS_IO_TYPE_ABORT), -1);
	io->hw_cb = cb;

	/*
	 * For aborts, we don't need a HW IO, but we still want to pass through
	 * the pending list to preserve ordering. Thus, if the pending list is
	 * not empty, add this abort to the pending list and process the pending list.
	 */
	FUNC4(&xport->io_pending_lock);
		if (!FUNC3(&xport->io_pending_list)) {
			FUNC2(&xport->io_pending_list, io);
			FUNC7(&xport->io_pending_lock);
			FUNC1(&xport->io_pending_count, 1);
			FUNC1(&xport->io_total_pending, 1);

			/* process pending list */
			FUNC5(ocs);
			return 0;
		}
	FUNC7(&xport->io_pending_lock);

	/* nothing on pending list, dispatch abort */
	return FUNC6(io);

}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  io_alloc_failed_count; } ;
typedef  TYPE_1__ ocs_xport_t ;
struct TYPE_11__ {char* display_name; int /*<<< orphan*/  ref; void* abort_cb_arg; int /*<<< orphan*/  abort_cb; int /*<<< orphan*/  send_abts; struct TYPE_11__* io_to_abort; int /*<<< orphan*/  io_type; struct TYPE_11__* node; int /*<<< orphan*/  cmd_tgt; int /*<<< orphan*/ * hio; TYPE_1__* xport; struct TYPE_11__* ocs; } ;
typedef  TYPE_2__ ocs_t ;
typedef  int /*<<< orphan*/  ocs_scsi_io_cb_t ;
typedef  TYPE_2__ ocs_io_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OCS_IO_TYPE_ABORT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_target_abort_cb ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 

int32_t
FUNC7(ocs_io_t *io, ocs_scsi_io_cb_t cb, void *arg)
{
	ocs_t *ocs;
	ocs_xport_t *xport;
	int32_t rc;

	ocs_io_t *abort_io = NULL;
	FUNC0(io, -1);
	FUNC0(io->node, -1);
	FUNC0(io->ocs, -1);

	ocs = io->ocs;
	xport = ocs->xport;

	/* take a reference on IO being aborted */
	if ((FUNC3(&io->ref) == 0)) {
		/* command no longer active */
		FUNC6(io, "command no longer active\n");
		return -1;
	}

	/*
	 * allocate a new IO to send the abort request. Use ocs_io_alloc() directly, as
	 * we need an IO object that will not fail allocation due to allocations being
	 * disabled (in ocs_scsi_io_alloc())
	 */
	abort_io = FUNC2(ocs);
	if (abort_io == NULL) {
		FUNC1(&xport->io_alloc_failed_count, 1);
		FUNC4(&io->ref); /* ocs_ref_get(): same function */
		return -1;
	}

	/* Save the target server callback and argument */
	FUNC0(abort_io->hio == NULL, -1);

	/* set generic fields */
	abort_io->cmd_tgt = TRUE;
	abort_io->node = io->node;

	/* set type and abort-specific fields */
	abort_io->io_type = OCS_IO_TYPE_ABORT;
	abort_io->display_name = "tgt_abort";
	abort_io->io_to_abort = io;
	abort_io->send_abts = FALSE;
	abort_io->abort_cb = cb;
	abort_io->abort_cb_arg = arg;

	/* now dispatch IO */
	rc = FUNC5(abort_io, ocs_target_abort_cb);
	if (rc) {
		FUNC4(&io->ref); /* ocs_ref_get(): same function */
	}
	return rc;
}
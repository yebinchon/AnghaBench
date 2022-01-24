#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  active_ios_lock; int /*<<< orphan*/  active_ios; struct TYPE_13__* ocs; int /*<<< orphan*/  io_alloc_failed_count; int /*<<< orphan*/  io_alloc_enabled; struct TYPE_13__* xport; } ;
typedef  TYPE_1__ ocs_xport_t ;
typedef  TYPE_1__ ocs_t ;
typedef  int ocs_scsi_io_role_e ;
typedef  TYPE_1__ ocs_node_t ;
struct TYPE_14__ {char* display_name; void* cmd_tgt; void* cmd_ini; int /*<<< orphan*/  io_type; TYPE_1__* node; TYPE_1__* ocs; int /*<<< orphan*/ * hio; int /*<<< orphan*/  ref; } ;
typedef  TYPE_4__ ocs_io_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  OCS_IO_TYPE_IO ; 
#define  OCS_SCSI_IO_ROLE_ORIGINATOR 129 
#define  OCS_SCSI_IO_ROLE_RESPONDER 128 
 void* TRUE ; 
 int /*<<< orphan*/  _ocs_scsi_io_free ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

ocs_io_t *
FUNC8(ocs_node_t *node, ocs_scsi_io_role_e role)
{
	ocs_t *ocs;
	ocs_xport_t *xport;
	ocs_io_t *io;

	FUNC0(node, NULL);
	FUNC0(node->ocs, NULL);

	ocs = node->ocs;
	FUNC0(ocs->xport, NULL);
	xport = ocs->xport;

	FUNC4(&node->active_ios_lock);

		if (!node->io_alloc_enabled) {
			FUNC7(&node->active_ios_lock);
			return NULL;
		}

		io = FUNC2(ocs);
		if (io == NULL) {
			FUNC1(&xport->io_alloc_failed_count, 1);
			FUNC7(&node->active_ios_lock);
			return NULL;
		}

		/* initialize refcount */
		FUNC6(&io->ref, _ocs_scsi_io_free, io);

		if (io->hio != NULL) {
			FUNC5(node->ocs, "assertion failed: io->hio is not NULL\n");
			FUNC7(&node->active_ios_lock);
			return NULL;
		}

		/* set generic fields */
		io->ocs = ocs;
		io->node = node;

		/* set type and name */
		io->io_type = OCS_IO_TYPE_IO;
		io->display_name = "scsi_io";

		switch (role) {
		case OCS_SCSI_IO_ROLE_ORIGINATOR:
			io->cmd_ini = TRUE;
			io->cmd_tgt = FALSE;
			break;
		case OCS_SCSI_IO_ROLE_RESPONDER:
			io->cmd_ini = FALSE;
			io->cmd_tgt = TRUE;
			break;
		}

		/* Add to node's active_ios list */
		FUNC3(&node->active_ios, io);

	FUNC7(&node->active_ios_lock);

	return io;
}
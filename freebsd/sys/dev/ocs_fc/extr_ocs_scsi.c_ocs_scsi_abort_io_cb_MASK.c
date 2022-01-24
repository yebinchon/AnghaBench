#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ocs_hw_io_s {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  scsi_ini_cb_arg; int /*<<< orphan*/  (* scsi_ini_cb ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ref; struct TYPE_12__* io_to_abort; struct TYPE_12__* ocs; } ;
typedef  TYPE_1__ ocs_t ;
typedef  int /*<<< orphan*/  ocs_scsi_io_status_e ;
typedef  int /*<<< orphan*/  ocs_remote_node_t ;
typedef  TYPE_1__ ocs_io_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_SCSI_STATUS_ABORTED ; 
 int /*<<< orphan*/  OCS_SCSI_STATUS_ABORT_IN_PROGRESS ; 
 int /*<<< orphan*/  OCS_SCSI_STATUS_ERROR ; 
 int /*<<< orphan*/  OCS_SCSI_STATUS_GOOD ; 
 int /*<<< orphan*/  OCS_SCSI_STATUS_NO_IO ; 
 int /*<<< orphan*/  SLI4_FC_LOCAL_REJECT_ABORT_IN_PROGRESS ; 
 int /*<<< orphan*/  SLI4_FC_LOCAL_REJECT_ABORT_REQUESTED ; 
 int /*<<< orphan*/  SLI4_FC_LOCAL_REJECT_NO_XRI ; 
#define  SLI4_FC_WCQE_STATUS_LOCAL_REJECT 129 
#define  SLI4_FC_WCQE_STATUS_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC9(struct ocs_hw_io_s *hio, ocs_remote_node_t *rnode, uint32_t len, int32_t status,
	uint32_t ext_status, void *arg)
{
	ocs_io_t *io = arg;
	ocs_t *ocs;
	ocs_scsi_io_status_e scsi_status = OCS_SCSI_STATUS_GOOD;

	FUNC0(io, -1);
	FUNC0(FUNC1(io), -1);
	FUNC0(io->ocs, -1);
	FUNC0(io->io_to_abort, -1);
	ocs = io->ocs;

	FUNC2(ocs, "status %d ext %d\n", status, ext_status);

	/* done with IO to abort */
	FUNC4(&io->io_to_abort->ref); /* ocs_ref_get(): ocs_scsi_send_tmf() */

	FUNC7(io);

	switch (status) {
	case SLI4_FC_WCQE_STATUS_SUCCESS:
		scsi_status = OCS_SCSI_STATUS_GOOD;
		break;
	case SLI4_FC_WCQE_STATUS_LOCAL_REJECT:
		if (ext_status == SLI4_FC_LOCAL_REJECT_ABORT_REQUESTED) {
			scsi_status = OCS_SCSI_STATUS_ABORTED;
		} else if (ext_status == SLI4_FC_LOCAL_REJECT_NO_XRI) {
			scsi_status = OCS_SCSI_STATUS_NO_IO;
		} else if (ext_status == SLI4_FC_LOCAL_REJECT_ABORT_IN_PROGRESS) {
			scsi_status = OCS_SCSI_STATUS_ABORT_IN_PROGRESS;
		} else {
			FUNC3(ocs, "Unhandled local reject 0x%x/0x%x\n", status, ext_status);
			scsi_status = OCS_SCSI_STATUS_ERROR;
		}
		break;
	default:
		scsi_status = OCS_SCSI_STATUS_ERROR;
		break;
	}

	if (io->scsi_ini_cb) {
		(*io->scsi_ini_cb)(io, scsi_status, NULL, 0, io->scsi_ini_cb_arg);
	} else {
		FUNC6(io);
	}

	FUNC5(ocs);
	return 0;
}
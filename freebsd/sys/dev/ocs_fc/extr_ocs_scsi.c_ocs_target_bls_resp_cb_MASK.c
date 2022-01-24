#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * bls_cb_arg; int /*<<< orphan*/  (* bls_cb ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;struct TYPE_7__* ocs; } ;
typedef  TYPE_1__ ocs_t ;
typedef  int /*<<< orphan*/  ocs_scsi_io_status_e ;
typedef  int /*<<< orphan*/  (* ocs_scsi_io_cb_t ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  ocs_remote_node_t ;
typedef  TYPE_1__ ocs_io_t ;
typedef  int /*<<< orphan*/  ocs_hw_io_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_SCSI_STATUS_ERROR ; 
 int /*<<< orphan*/  OCS_SCSI_STATUS_GOOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int32_t
FUNC3(ocs_hw_io_t *hio, ocs_remote_node_t *rnode, uint32_t length, int32_t status, uint32_t ext_status, void *app)
{
	ocs_io_t *io = app;
	ocs_t *ocs;
	ocs_scsi_io_status_e bls_status;

	FUNC1(io, -1);
	FUNC1(io->ocs, -1);

	ocs = io->ocs;

	/* BLS isn't really a "SCSI" concept, but use SCSI status */
	if (status) {
		FUNC0(io, "s=%#x x=%#x\n", status, ext_status);
		bls_status = OCS_SCSI_STATUS_ERROR;
	} else {
		bls_status = OCS_SCSI_STATUS_GOOD;
	}

	if (io->bls_cb) {
		ocs_scsi_io_cb_t bls_cb = io->bls_cb;
		void *bls_cb_arg = io->bls_cb_arg;

		io->bls_cb = NULL;
		io->bls_cb_arg = NULL;

		/* invoke callback */
		bls_cb(io, bls_status, 0, bls_cb_arg);
	}

	FUNC2(ocs);
	return 0;
}
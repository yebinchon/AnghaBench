#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  void* uint16_t ;
struct TYPE_17__ {TYPE_1__* sport; } ;
struct TYPE_19__ {TYPE_2__ rnode; struct TYPE_19__* ocs; } ;
typedef  TYPE_4__ ocs_t ;
typedef  TYPE_4__ ocs_node_t ;
struct TYPE_18__ {void* rx_id; void* ox_id; TYPE_10__* payload; scalar_t__ s_id; } ;
struct TYPE_15__ {TYPE_3__ bls_sid; } ;
struct TYPE_20__ {char* display_name; TYPE_10__ iparam; void* init_task_tag; int /*<<< orphan*/  hio_type; int /*<<< orphan*/  io_type; int /*<<< orphan*/  cmd_tgt; TYPE_4__* node; TYPE_4__* ocs; } ;
typedef  TYPE_6__ ocs_io_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_21__ {int /*<<< orphan*/  high_seq_cnt; void* rx_id; void* ox_id; } ;
typedef  TYPE_7__ fc_ba_acc_payload_t ;
struct TYPE_16__ {scalar_t__ fc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_BLS_ACC_SID ; 
 int /*<<< orphan*/  OCS_IO_TYPE_BLS_RESP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UINT16_MAX ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocs_bls_send_acc_cb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 

__attribute__((used)) static ocs_io_t *
FUNC5(ocs_io_t *io, uint32_t s_id, uint16_t ox_id, uint16_t rx_id)
{
	ocs_node_t *node = io->node;
	int32_t rc;
	fc_ba_acc_payload_t *acc;
	ocs_t *ocs;

	FUNC0(node, NULL);
	FUNC0(node->ocs, NULL);
	ocs = node->ocs;

	if (node->rnode.sport->fc_id == s_id) {
		s_id = UINT32_MAX;
	}

	/* fill out generic fields */
	io->ocs = ocs;
	io->node = node;
	io->cmd_tgt = TRUE;

	/* fill out BLS Response-specific fields */
	io->io_type = OCS_IO_TYPE_BLS_RESP;
	io->display_name = "ba_acc";
	io->hio_type = OCS_HW_BLS_ACC_SID;
	io->init_task_tag = ox_id;

	/* fill out iparam fields */
	FUNC2(&io->iparam, 0, sizeof(io->iparam));
	io->iparam.bls_sid.s_id = s_id;
	io->iparam.bls_sid.ox_id = ox_id;
	io->iparam.bls_sid.rx_id = rx_id;

	acc = (void *)io->iparam.bls_sid.payload;

	FUNC2(io->iparam.bls_sid.payload, 0, sizeof(io->iparam.bls_sid.payload));
	acc->ox_id = io->iparam.bls_sid.ox_id;
	acc->rx_id = io->iparam.bls_sid.rx_id;
	acc->high_seq_cnt = UINT16_MAX;

	if ((rc = FUNC3(io, ocs_bls_send_acc_cb))) {
		FUNC1(ocs, "ocs_scsi_io_dispatch() failed: %d\n", rc);
		FUNC4(io);
		io = NULL;
	}
	return io;
}
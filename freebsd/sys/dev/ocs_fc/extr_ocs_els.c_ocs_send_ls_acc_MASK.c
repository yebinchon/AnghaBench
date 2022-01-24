#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_13__ {int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_3__ ocs_node_t ;
struct TYPE_12__ {TYPE_5__* virt; } ;
struct TYPE_11__ {void* ox_id; } ;
struct TYPE_15__ {int /*<<< orphan*/  command_code; TYPE_1__ els; } ;
struct TYPE_14__ {char* display_name; int /*<<< orphan*/  hio_type; TYPE_2__ els_req; TYPE_5__ iparam; void* init_task_tag; void* els_callback_arg; int /*<<< orphan*/  els_callback; TYPE_3__* node; } ;
typedef  TYPE_4__ ocs_io_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_5__ fc_acc_payload_t ;
typedef  int /*<<< orphan*/  els_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ELS_CMD_ACC ; 
 int /*<<< orphan*/  OCS_HW_ELS_RSP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

ocs_io_t *
FUNC4(ocs_io_t *io, uint32_t ox_id, els_cb_t cb, void *cbarg)
{
	ocs_node_t *node = io->node;
	int32_t rc;
	ocs_t *ocs = node->ocs;
	fc_acc_payload_t *acc;

	FUNC0();

	io->els_callback = cb;
	io->els_callback_arg = cbarg;
	io->display_name = "ls_acc";
	io->init_task_tag = ox_id;

	FUNC3(&io->iparam, 0, sizeof(io->iparam));
	io->iparam.els.ox_id = ox_id;

	acc = io->els_req.virt;
	FUNC3(acc, 0, sizeof(*acc));

	acc->command_code = FC_ELS_CMD_ACC;

	io->hio_type = OCS_HW_ELS_RSP;
	if ((rc = FUNC2(io, sizeof(*acc)))) {
		FUNC1(io);
		io = NULL;
	}

	return io;
}
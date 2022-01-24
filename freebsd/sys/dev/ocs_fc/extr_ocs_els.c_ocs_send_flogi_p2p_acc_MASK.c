#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_16__ {TYPE_3__* sport; int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_4__ ocs_node_t ;
struct TYPE_14__ {TYPE_6__* virt; } ;
struct TYPE_13__ {void* s_id; void* ox_id; } ;
struct TYPE_19__ {TYPE_1__ els_sid; } ;
struct TYPE_17__ {char* display_name; int /*<<< orphan*/  hio_type; TYPE_2__ els_req; TYPE_9__ iparam; void* init_task_tag; void* els_callback_arg; int /*<<< orphan*/  els_callback; TYPE_4__* node; } ;
typedef  TYPE_5__ ocs_io_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_18__ {TYPE_9__* class4_service_parameters; TYPE_9__* class3_service_parameters; TYPE_9__* class2_service_parameters; TYPE_9__* class1_service_parameters; scalar_t__ resv1; int /*<<< orphan*/  command_code; } ;
typedef  TYPE_6__ fc_plogi_payload_t ;
typedef  int /*<<< orphan*/  els_cb_t ;
struct TYPE_15__ {int /*<<< orphan*/  service_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ELS_CMD_ACC ; 
 int /*<<< orphan*/  OCS_HW_ELS_RSP_SID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 

ocs_io_t *
FUNC5(ocs_io_t *io, uint32_t ox_id, uint32_t s_id, els_cb_t cb, void *cbarg)
{
	ocs_node_t *node = io->node;
	int32_t rc;
	ocs_t *ocs = node->ocs;
	fc_plogi_payload_t *flogi;

	FUNC0();

	io->els_callback = cb;
	io->els_callback_arg = cbarg;
	io->display_name = "flogi_p2p_acc";
	io->init_task_tag = ox_id;

	FUNC4(&io->iparam, 0, sizeof(io->iparam));
	io->iparam.els_sid.ox_id = ox_id;
	io->iparam.els_sid.s_id = s_id;

	flogi = io->els_req.virt;

	/* copy our port's service parameters to payload */
	FUNC3(flogi, node->sport->service_params, sizeof(*flogi));
	flogi->command_code = FC_ELS_CMD_ACC;
	flogi->resv1 = 0;
	FUNC4(flogi->class1_service_parameters, 0, sizeof(flogi->class1_service_parameters));
	FUNC4(flogi->class2_service_parameters, 0, sizeof(flogi->class1_service_parameters));
	FUNC4(flogi->class3_service_parameters, 0, sizeof(flogi->class1_service_parameters));
	FUNC4(flogi->class4_service_parameters, 0, sizeof(flogi->class1_service_parameters));

	io->hio_type = OCS_HW_ELS_RSP_SID;
	if ((rc = FUNC2(io, sizeof(*flogi)))) {
		FUNC1(io);
		io = NULL;
	}

	return io;
}
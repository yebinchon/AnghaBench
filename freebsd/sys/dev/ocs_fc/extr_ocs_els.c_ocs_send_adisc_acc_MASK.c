#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_22__ {TYPE_4__* sport; } ;
struct TYPE_23__ {TYPE_5__ rnode; TYPE_2__* sport; struct TYPE_23__* ocs; } ;
typedef  TYPE_6__ ocs_t ;
typedef  TYPE_6__ ocs_node_t ;
struct TYPE_20__ {TYPE_10__* virt; } ;
struct TYPE_18__ {void* ox_id; } ;
struct TYPE_17__ {int /*<<< orphan*/  port_id; int /*<<< orphan*/  node_name_lo; int /*<<< orphan*/  node_name_hi; int /*<<< orphan*/  port_name_lo; int /*<<< orphan*/  port_name_hi; scalar_t__ hard_address; int /*<<< orphan*/  command_code; TYPE_1__ els; } ;
struct TYPE_24__ {char* display_name; int /*<<< orphan*/  hio_type; TYPE_3__ els_req; TYPE_10__ iparam; void* init_task_tag; void* els_callback_arg; int /*<<< orphan*/  els_callback; TYPE_6__* node; } ;
typedef  TYPE_8__ ocs_io_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_25__ {int /*<<< orphan*/  node_name_lo; int /*<<< orphan*/  node_name_hi; int /*<<< orphan*/  port_name_lo; int /*<<< orphan*/  port_name_hi; } ;
typedef  TYPE_9__ fc_plogi_payload_t ;
typedef  TYPE_10__ fc_adisc_payload_t ;
typedef  int /*<<< orphan*/  els_cb_t ;
struct TYPE_21__ {int /*<<< orphan*/  fc_id; } ;
struct TYPE_19__ {scalar_t__ service_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ELS_CMD_ACC ; 
 int /*<<< orphan*/  OCS_HW_ELS_RSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,int /*<<< orphan*/ ,int) ; 

ocs_io_t *
FUNC6(ocs_io_t *io, uint32_t ox_id, els_cb_t cb, void *cbarg)
{
	ocs_node_t *node = io->node;
	int32_t rc;
	fc_adisc_payload_t *adisc;
	fc_plogi_payload_t *sparams;
	ocs_t *ocs;

	FUNC2(node, NULL);
	FUNC2(node->ocs, NULL);
	ocs = node->ocs;

	FUNC1();

	io->els_callback = cb;
	io->els_callback_arg = cbarg;
	io->display_name = "adisc_acc";
	io->init_task_tag = ox_id;

	/* Go ahead and send the ELS_ACC */
	FUNC5(&io->iparam, 0, sizeof(io->iparam));
	io->iparam.els.ox_id = ox_id;

	sparams = (fc_plogi_payload_t*) node->sport->service_params;
	adisc = io->els_req.virt;
	FUNC5(adisc, 0, sizeof(fc_adisc_payload_t));
	adisc->command_code = FC_ELS_CMD_ACC;
	adisc->hard_address = 0;
	adisc->port_name_hi = sparams->port_name_hi;
	adisc->port_name_lo = sparams->port_name_lo;
	adisc->node_name_hi = sparams->node_name_hi;
	adisc->node_name_lo = sparams->node_name_lo;
	adisc->port_id = FUNC0(node->rnode.sport->fc_id);

	io->hio_type = OCS_HW_ELS_RSP;
	if ((rc = FUNC4(io, sizeof(*adisc)))) {
		FUNC3(io);
		io = NULL;
	}

	return io;
}
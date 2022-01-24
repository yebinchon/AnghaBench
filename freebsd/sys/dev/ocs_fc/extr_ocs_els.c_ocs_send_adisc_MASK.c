#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_23__ {int /*<<< orphan*/  fc_id; scalar_t__ service_params; } ;
typedef  TYPE_6__ ocs_sport_t ;
struct TYPE_20__ {TYPE_2__* sport; } ;
struct TYPE_24__ {TYPE_3__ rnode; TYPE_6__* sport; int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_7__ ocs_node_t ;
struct TYPE_21__ {void* timeout; } ;
struct TYPE_22__ {TYPE_4__ els; } ;
struct TYPE_18__ {TYPE_10__* virt; } ;
struct TYPE_25__ {char* display_name; TYPE_5__ iparam; int /*<<< orphan*/  hio_type; TYPE_1__ els_req; void* els_callback_arg; int /*<<< orphan*/  els_callback; void* els_retries_remaining; void* els_timeout_sec; } ;
typedef  TYPE_8__ ocs_io_t ;
struct TYPE_26__ {int /*<<< orphan*/  node_name_lo; int /*<<< orphan*/  node_name_hi; int /*<<< orphan*/  port_name_lo; int /*<<< orphan*/  port_name_hi; } ;
typedef  TYPE_9__ fc_plogi_payload_t ;
struct TYPE_17__ {void* port_id; int /*<<< orphan*/  node_name_lo; int /*<<< orphan*/  node_name_hi; int /*<<< orphan*/  port_name_lo; int /*<<< orphan*/  port_name_hi; void* hard_address; int /*<<< orphan*/  command_code; } ;
typedef  TYPE_10__ fc_adisc_payload_t ;
typedef  int /*<<< orphan*/  els_cb_t ;
struct TYPE_19__ {int /*<<< orphan*/  fc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ELS_CMD_ADISC ; 
 int /*<<< orphan*/  OCS_ELS_ROLE_ORIGINATOR ; 
 int /*<<< orphan*/  OCS_HW_ELS_REQ ; 
 int /*<<< orphan*/  __ocs_els_init ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_8__* FUNC2 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,int /*<<< orphan*/ ,int) ; 

ocs_io_t *
FUNC6(ocs_node_t *node, uint32_t timeout_sec, uint32_t retries,
	els_cb_t cb, void *cbarg)
{
	ocs_io_t *els;
	ocs_t *ocs;
	fc_adisc_payload_t *adisc;
	fc_plogi_payload_t *sparams;
	ocs_sport_t *sport = node->sport;

	ocs = node->ocs;

	FUNC1();

	sparams = (fc_plogi_payload_t*) node->sport->service_params;

	els = FUNC2(node, sizeof(*adisc), OCS_ELS_ROLE_ORIGINATOR);
	if (els == NULL) {
		FUNC4(ocs, "IO alloc failed\n");
	} else {
		els->els_timeout_sec = timeout_sec;
		els->els_retries_remaining = retries;
		els->els_callback = cb;
		els->els_callback_arg = cbarg;
		els->display_name = "adisc";

		/* Build ADISC request */

		adisc = els->els_req.virt;
		sparams = (fc_plogi_payload_t*) node->sport->service_params;

		FUNC5(adisc, 0, sizeof(*adisc));
		adisc->command_code = FC_ELS_CMD_ADISC;
		adisc->hard_address = FUNC0(sport->fc_id);
		adisc->port_name_hi = sparams->port_name_hi;
		adisc->port_name_lo = sparams->port_name_lo;
		adisc->node_name_hi = sparams->node_name_hi;
		adisc->node_name_lo = sparams->node_name_lo;
		adisc->port_id = FUNC0(node->rnode.sport->fc_id);

		els->hio_type = OCS_HW_ELS_REQ;
		els->iparam.els.timeout = timeout_sec;
		FUNC3(els, __ocs_els_init, NULL);
	}
	return els;
}
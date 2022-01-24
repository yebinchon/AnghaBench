#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_15__ {int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_4__ ocs_node_t ;
struct TYPE_13__ {int timeout; } ;
struct TYPE_14__ {TYPE_2__ els; } ;
struct TYPE_12__ {TYPE_6__* virt; } ;
struct TYPE_16__ {int els_timeout_sec; int els_retries_remaining; char* display_name; TYPE_3__ iparam; int /*<<< orphan*/  hio_type; TYPE_1__ els_req; void* els_callback_arg; int /*<<< orphan*/  els_callback; } ;
typedef  TYPE_5__ ocs_io_t ;
struct TYPE_17__ {int page_length; int /*<<< orphan*/  port_list; int /*<<< orphan*/  payload_length; int /*<<< orphan*/  command_code; } ;
typedef  TYPE_6__ fc_rscn_payload_t ;
typedef  int /*<<< orphan*/  fc_rscn_affected_port_id_page_t ;
typedef  int /*<<< orphan*/  els_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ELS_CMD_RSCN ; 
 int /*<<< orphan*/  OCS_ELS_ROLE_ORIGINATOR ; 
 int /*<<< orphan*/  OCS_HW_ELS_REQ ; 
 int /*<<< orphan*/  __ocs_els_init ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 

ocs_io_t *
FUNC6(ocs_node_t *node, uint32_t timeout_sec, uint32_t retries,
	void *port_ids, uint32_t port_ids_count, els_cb_t cb, void *cbarg)
{
	ocs_io_t *els;
	ocs_t *ocs = node->ocs;
	fc_rscn_payload_t *req;
	uint32_t payload_length = sizeof(fc_rscn_affected_port_id_page_t)*(port_ids_count - 1) +
		sizeof(fc_rscn_payload_t);

	FUNC0();

	els = FUNC1(node, payload_length, OCS_ELS_ROLE_ORIGINATOR);
	if (els == NULL) {
		FUNC4(ocs, "IO alloc failed\n");
	} else {
		els->els_timeout_sec = timeout_sec;
		els->els_retries_remaining = retries;
		els->els_callback = cb;
		els->els_callback_arg = cbarg;
		els->display_name = "rscn";

		req = els->els_req.virt;

		req->command_code = FC_ELS_CMD_RSCN;
		req->page_length = sizeof(fc_rscn_affected_port_id_page_t);
		req->payload_length = FUNC2(sizeof(*req) +
			sizeof(fc_rscn_affected_port_id_page_t)*(port_ids_count-1));

		els->hio_type = OCS_HW_ELS_REQ;
		els->iparam.els.timeout = timeout_sec;

		/* copy in the payload */
		FUNC5(req->port_list, port_ids, port_ids_count*sizeof(fc_rscn_affected_port_id_page_t));

		/* Submit the request */
		FUNC3(els, __ocs_els_init, NULL);
	}
	return els;
}
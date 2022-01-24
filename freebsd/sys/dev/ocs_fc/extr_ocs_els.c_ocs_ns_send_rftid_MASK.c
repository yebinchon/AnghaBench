#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_19__ {TYPE_4__* sport; } ;
struct TYPE_20__ {TYPE_5__ rnode; int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_6__ ocs_node_t ;
struct TYPE_17__ {TYPE_8__* virt; } ;
struct TYPE_15__ {int /*<<< orphan*/  timeout; scalar_t__ df_ctl; int /*<<< orphan*/  type; int /*<<< orphan*/  r_ctl; } ;
struct TYPE_16__ {TYPE_1__ fc_ct; } ;
struct TYPE_21__ {char* display_name; int /*<<< orphan*/  hio_type; TYPE_3__ els_req; void* els_callback_arg; int /*<<< orphan*/  els_callback; TYPE_2__ iparam; } ;
typedef  TYPE_7__ ocs_io_t ;
struct TYPE_22__ {void** fc4_types; void* port_id; int /*<<< orphan*/  hdr; } ;
typedef  TYPE_8__ fcct_rftid_req_t ;
typedef  int /*<<< orphan*/  els_cb_t ;
struct TYPE_18__ {int fc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_GS_NAMESERVER_RFT_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_RCTL_ELS ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 int /*<<< orphan*/  FC_TYPE_GS ; 
 int /*<<< orphan*/  OCS_ELS_ROLE_ORIGINATOR ; 
 scalar_t__ OCS_ELS_RSP_LEN ; 
 int /*<<< orphan*/  OCS_HW_FC_CT ; 
 int /*<<< orphan*/  __ocs_els_init ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_7__* FUNC4 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 

ocs_io_t *
FUNC9(ocs_node_t *node, uint32_t timeout_sec, uint32_t retries,
	els_cb_t cb, void *cbarg)
{
	ocs_io_t *els;
	ocs_t *ocs = node->ocs;
	fcct_rftid_req_t *rftid;

	FUNC3();

	els = FUNC4(node, sizeof(*rftid), OCS_ELS_ROLE_ORIGINATOR);
	if (els == NULL) {
		FUNC7(ocs, "IO alloc failed\n");
	} else {

		els->iparam.fc_ct.r_ctl = FC_RCTL_ELS;
		els->iparam.fc_ct.type = FC_TYPE_GS;
		els->iparam.fc_ct.df_ctl = 0;
		els->iparam.fc_ct.timeout = timeout_sec;

		els->els_callback = cb;
		els->els_callback_arg = cbarg;
		els->display_name = "rftid";

		rftid = els->els_req.virt;

		FUNC8(rftid, 0, sizeof(*rftid));
		FUNC2(&rftid->hdr, FC_GS_NAMESERVER_RFT_ID, (OCS_ELS_RSP_LEN - sizeof(rftid->hdr)));
		rftid->port_id = FUNC5(node->rnode.sport->fc_id);
		rftid->fc4_types[FUNC1(FC_TYPE_FCP)] = FUNC5(1 << FUNC0(FC_TYPE_FCP));

		els->hio_type = OCS_HW_FC_CT;

		FUNC6(els, __ocs_els_init, NULL);
	}
	return els;
}
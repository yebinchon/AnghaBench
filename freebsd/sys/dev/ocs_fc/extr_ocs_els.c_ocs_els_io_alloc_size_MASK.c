#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_21__ {int /*<<< orphan*/  active_ios_lock; int /*<<< orphan*/  els_io_pend_list; int /*<<< orphan*/  io_alloc_failed_count; int /*<<< orphan*/  io_alloc_enabled; struct TYPE_21__* xport; struct TYPE_21__* ocs; } ;
typedef  TYPE_3__ ocs_xport_t ;
typedef  TYPE_3__ ocs_t ;
typedef  TYPE_3__ ocs_node_t ;
struct TYPE_23__ {TYPE_6__* app; } ;
struct TYPE_20__ {scalar_t__ size; } ;
struct TYPE_19__ {scalar_t__ size; } ;
struct TYPE_22__ {char* display_name; int els_pend; scalar_t__ els_active; scalar_t__ els_evtdepth; int /*<<< orphan*/  els_retries_remaining; TYPE_8__ els_sm; TYPE_2__ els_rsp; TYPE_1__ els_req; int /*<<< orphan*/  io_type; TYPE_3__* node; TYPE_3__* ocs; int /*<<< orphan*/ * hio; void* cmd_tgt; void* cmd_ini; int /*<<< orphan*/  ref; } ;
typedef  TYPE_6__ ocs_io_t ;
typedef  int ocs_els_role_e ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ OCS_ELS_GID_PT_RSP_LEN ; 
 scalar_t__ OCS_ELS_REQ_LEN ; 
#define  OCS_ELS_ROLE_ORIGINATOR 129 
#define  OCS_ELS_ROLE_RESPONDER 128 
 int /*<<< orphan*/  OCS_FC_ELS_DEFAULT_RETRIES ; 
 int /*<<< orphan*/  OCS_IO_TYPE_ELS ; 
 void* TRUE ; 
 int /*<<< orphan*/  _ocs_els_io_free ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_6__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

ocs_io_t *
FUNC11(ocs_node_t *node, uint32_t reqlen, uint32_t rsplen, ocs_els_role_e role)
{

	ocs_t *ocs;
	ocs_xport_t *xport;
	ocs_io_t *els;
	FUNC0(node, NULL);
	FUNC0(node->ocs, NULL);
	ocs = node->ocs;
	FUNC0(ocs->xport, NULL);
	xport = ocs->xport;

	FUNC5(&node->active_ios_lock);
		if (!node->io_alloc_enabled) {
			FUNC6(ocs, "called with io_alloc_enabled = FALSE\n");
			FUNC10(&node->active_ios_lock);
			return NULL;
		}

		els = FUNC2(ocs);
		if (els == NULL) {
			FUNC1(&xport->io_alloc_failed_count, 1);
			FUNC10(&node->active_ios_lock);
			return NULL;
		}

		/* initialize refcount */
		FUNC9(&els->ref, _ocs_els_io_free, els);

		switch (role) {
		case OCS_ELS_ROLE_ORIGINATOR:
			els->cmd_ini = TRUE;
			els->cmd_tgt = FALSE;
			break;
		case OCS_ELS_ROLE_RESPONDER:
			els->cmd_ini = FALSE;
			els->cmd_tgt = TRUE;
			break;
		}

		/* IO should not have an associated HW IO yet.  Assigned below. */
		if (els->hio != NULL) {
			FUNC7(ocs, "assertion failed.  HIO is not null\n");
			FUNC3(ocs, els);
			FUNC10(&node->active_ios_lock);
			return NULL;
		}

		/* populate generic io fields */
		els->ocs = ocs;
		els->node = node;

		/* set type and ELS-specific fields */
		els->io_type = OCS_IO_TYPE_ELS;
		els->display_name = "pending";

		if (reqlen > OCS_ELS_REQ_LEN) {
			FUNC7(ocs, "ELS command request len greater than allocated\n");
			FUNC3(ocs, els);
			FUNC10(&node->active_ios_lock);
			return NULL;
		}

		if (rsplen > OCS_ELS_GID_PT_RSP_LEN) {
			FUNC7(ocs, "ELS command response len: %d "
				"greater than allocated\n", rsplen);
			FUNC3(ocs, els);
			FUNC10(&node->active_ios_lock);
			return NULL;
		}

		els->els_req.size = reqlen;
		els->els_rsp.size = rsplen;

		if (els != NULL) {
			FUNC8(&els->els_sm, 0, sizeof(els->els_sm));
			els->els_sm.app = els;

			/* initialize fields */
			els->els_retries_remaining = OCS_FC_ELS_DEFAULT_RETRIES;
			els->els_evtdepth = 0;
			els->els_pend = 0;
			els->els_active = 0;

			/* add els structure to ELS IO list */
			FUNC4(&node->els_io_pend_list, els);
			els->els_pend = 1;
		}
	FUNC10(&node->active_ios_lock);
	return els;
}
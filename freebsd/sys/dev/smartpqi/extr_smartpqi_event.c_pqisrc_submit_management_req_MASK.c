#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int req_pending; size_t tag; } ;
typedef  TYPE_1__ rcb_t ;
struct TYPE_12__ {int /*<<< orphan*/  taglist; TYPE_1__* rcb; int /*<<< orphan*/ * op_raid_ib_q; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_13__ {size_t request_id; } ;
typedef  TYPE_3__ pqi_event_config_request_t ;
typedef  int /*<<< orphan*/  ib_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t INVALID_ELEM ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*) ; 

int FUNC7(pqisrc_softstate_t *softs, 
                                      pqi_event_config_request_t *request)
{  
	int ret = PQI_STATUS_SUCCESS;
	ib_queue_t *op_ib_q = &softs->op_raid_ib_q[0];
	rcb_t *rcb = NULL;
	
	FUNC1(" IN\n");

	/* Get the tag */
	request->request_id = FUNC3(&softs->taglist);
	if (INVALID_ELEM == request->request_id) {
		FUNC0("Tag not available\n");
		ret = PQI_STATUS_FAILURE;
		goto err_out; 
	}

	rcb = &softs->rcb[request->request_id];
	rcb->req_pending = true;
	rcb->tag = request->request_id;
	/* Submit command on operational raid ib queue */
	ret = FUNC5(softs, op_ib_q, request);
	if (ret != PQI_STATUS_SUCCESS) {
		FUNC0("  Unable to submit command\n");
		goto err_cmd;
	}

	ret = FUNC6(softs, rcb);
	if (ret != PQI_STATUS_SUCCESS) {
		FUNC0("Management request timed out !!\n");
		goto err_cmd;
	}

	FUNC2(rcb);    
 	FUNC4(&softs->taglist,request->request_id);
	FUNC1("OUT\n");
	return ret;
	
err_cmd:
	FUNC2(rcb); 
	FUNC4(&softs->taglist,request->request_id);
err_out:
	FUNC1(" failed OUT : %d\n", ret);
	return ret;
}
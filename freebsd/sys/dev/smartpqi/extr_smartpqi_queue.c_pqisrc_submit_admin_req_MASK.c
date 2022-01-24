#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_19__ {int* pi_virt_addr; int ci_local; int elem_size; int num_elem; int /*<<< orphan*/  ci_register_offset; int /*<<< orphan*/  ci_register_abs; scalar_t__ array_virt_addr; } ;
struct TYPE_18__ {int /*<<< orphan*/  taglist; TYPE_12__* rcb; int /*<<< orphan*/  admin_ib_queue; TYPE_4__ admin_ob_queue; } ;
typedef  TYPE_3__ pqisrc_softstate_t ;
typedef  TYPE_4__ ob_queue_t ;
typedef  int /*<<< orphan*/  ib_queue_t ;
struct TYPE_17__ {scalar_t__ iu_type; } ;
struct TYPE_20__ {scalar_t__ fn_code; int status; TYPE_2__ header; } ;
typedef  TYPE_5__ gen_adm_resp_iu_t ;
struct TYPE_16__ {int comp_feature; int /*<<< orphan*/  iu_length; int /*<<< orphan*/  iu_type; } ;
struct TYPE_21__ {size_t req_id; scalar_t__ fn_code; scalar_t__ work; scalar_t__ res1; TYPE_1__ header; } ;
typedef  TYPE_6__ gen_adm_req_iu_t ;
struct TYPE_15__ {size_t tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 size_t INVALID_ELEM ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PQISRC_ADMIN_CMD_RESP_TIMEOUT ; 
 int /*<<< orphan*/  PQI_IU_TYPE_GENERAL_ADMIN_REQUEST ; 
 scalar_t__ PQI_IU_TYPE_GENERAL_ADMIN_RESPONSE ; 
 int /*<<< orphan*/  PQI_STANDARD_IU_LENGTH ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int PQI_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_12__*) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_6__*) ; 

int FUNC11(pqisrc_softstate_t *softs,
			gen_adm_req_iu_t *req, gen_adm_resp_iu_t *resp)
{
	int ret = PQI_STATUS_SUCCESS;
	ob_queue_t *ob_q = &softs->admin_ob_queue;
	ib_queue_t *ib_q = &softs->admin_ib_queue;
	int tmo = PQISRC_ADMIN_CMD_RESP_TIMEOUT;
	
	FUNC3("IN\n");

	req->header.iu_type =
		PQI_IU_TYPE_GENERAL_ADMIN_REQUEST;
	req->header.comp_feature = 0x00;
	req->header.iu_length = PQI_STANDARD_IU_LENGTH;
	req->res1 = 0;
	req->work = 0;
	
	/* Get the tag */
	req->req_id = FUNC8(&softs->taglist);
	if (INVALID_ELEM == req->req_id) {
		FUNC2("Tag not available0x%x\n",(uint16_t)req->req_id);
		ret = PQI_STATUS_FAILURE;
		goto err_out;
	}
	softs->rcb[req->req_id].tag = req->req_id;
	
	/* Submit the command to the admin ib queue */
	ret = FUNC10(softs, ib_q, req);
	if (ret != PQI_STATUS_SUCCESS) {
		FUNC2("Unable to submit command\n");
		goto err_cmd;
	}

	/* Wait for completion */
	FUNC1((*(ob_q->pi_virt_addr) != ob_q->ci_local), tmo);
	if (tmo <= 0) {
		FUNC2("Admin cmd timeout\n");
		FUNC2("tmo : %d\n",tmo);	\
		ret = PQI_STATUS_TIMEOUT;
		goto err_cmd;
	}
	
	/* Copy the response */
	FUNC6(resp, ob_q->array_virt_addr + (ob_q->ci_local * ob_q->elem_size),
					sizeof(gen_adm_resp_iu_t));
					
	/* Update CI */
	ob_q->ci_local = (ob_q->ci_local + 1 ) %  ob_q->num_elem;
	FUNC5(softs, ob_q->ci_register_abs, 
        ob_q->ci_register_offset, FUNC4(ob_q->ci_local));
	
	/* Validate the response data */
	FUNC0(req->fn_code == resp->fn_code);
	FUNC0(resp->header.iu_type == PQI_IU_TYPE_GENERAL_ADMIN_RESPONSE);
	ret = resp->status;
	if (ret)
		goto err_cmd;

	FUNC7(&softs->rcb[req->req_id]);
	FUNC9(&softs->taglist,req->req_id);
	FUNC3("OUT\n");
	return ret;
err_cmd:
	FUNC7(&softs->rcb[req->req_id]);
	FUNC9(&softs->taglist,req->req_id);
err_out:
	FUNC3("failed OUT : %d\n", ret);
	return ret;
}
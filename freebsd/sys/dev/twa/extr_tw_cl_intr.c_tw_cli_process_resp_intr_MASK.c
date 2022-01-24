#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tw_cli_req_context {scalar_t__ state; } ;
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; struct tw_cli_req_context* req_ctxt_buf; } ;
typedef  int TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int TWA_STATUS_RESPONSE_QUEUE_EMPTY ; 
 int /*<<< orphan*/  TW_CLI_BUSY_Q ; 
 int /*<<< orphan*/  TW_CLI_COMPLETE_Q ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TW_CLI_REQ_STATE_BUSY ; 
 scalar_t__ TW_CLI_REQ_STATE_COMPLETE ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,struct tw_cli_req_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tw_cli_ctlr_context*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct tw_cli_req_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tw_cli_req_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

TW_INT32
FUNC11(struct tw_cli_ctlr_context *ctlr)
{
	TW_UINT32			resp;
	struct tw_cli_req_context	*req;
	TW_INT32			error;
	TW_UINT32			status_reg;
    
	FUNC6(10, ctlr->ctlr_handle, FUNC10(), "entered");

	for (;;) {
		status_reg = FUNC2(ctlr->ctlr_handle);
		if ((error = FUNC5(ctlr, status_reg)))
			break;
		if (status_reg & TWA_STATUS_RESPONSE_QUEUE_EMPTY) {
			FUNC6(7, ctlr->ctlr_handle,
				FUNC10(), "Response queue empty");
			break;
		}

		/* Response queue is not empty. */
		resp = FUNC1(ctlr->ctlr_handle);
		{
			req = &(ctlr->req_ctxt_buf[FUNC0(resp)]);
		}

		if (req->state != TW_CLI_REQ_STATE_BUSY) {
			FUNC3(ctlr->ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
				0x1201, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Unposted command completed!!",
				"request = %p, status = %d",
				req, req->state);
#ifdef TW_OSL_DEBUG
			tw_cl_print_ctlr_stats(ctlr->ctlr_handle);
#endif /* TW_OSL_DEBUG */
			continue;
		}

		/*
		 * Remove the request from the busy queue, mark it as complete,
		 * and enqueue it in the complete queue.
		 */
		FUNC9(req, TW_CLI_BUSY_Q);
		req->state = TW_CLI_REQ_STATE_COMPLETE;
		FUNC8(req, TW_CLI_COMPLETE_Q);

	}

	/* Complete this, and other requests in the complete queue. */
	FUNC7(ctlr);
	
	return(error);
}
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
struct twa_softc {int dummy; } ;
struct tw_cli_req_context {int /*<<< orphan*/  req_handle; } ;
struct tw_cli_ctlr_context {void* reset_needed; void* reset_in_progress; int /*<<< orphan*/ * req_q_head; scalar_t__ max_simult_reqs; void* get_more_aens; void* internal_req_busy; } ;
struct tw_cl_ctlr_handle {struct twa_softc* osl_ctlr_ctxt; scalar_t__ cl_ctlr_ctxt; } ;
typedef  int /*<<< orphan*/  TW_UINT16 ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TWA_CONTROL_UNMASK_COMMAND_INTERRUPT ; 
 scalar_t__ TW_CLI_MAX_RESET_ATTEMPTS ; 
 size_t TW_CLI_PENDING_Q ; 
 int /*<<< orphan*/  TW_CLI_RESET_Q ; 
 int /*<<< orphan*/  FUNC0 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 
 void* TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT ; 
 struct tw_cli_req_context* TW_CL_NULL ; 
 struct tw_cli_req_context* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_INFO_STRING ; 
 void* TW_CL_TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct tw_cl_ctlr_handle*,void*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct tw_cli_ctlr_context*) ; 
 scalar_t__ FUNC8 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tw_cli_req_context*,struct tw_cli_req_context*,struct tw_cli_req_context*,struct tw_cli_req_context*,struct tw_cli_req_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct tw_cli_req_context*,size_t) ; 
 struct tw_cli_req_context* FUNC10 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct tw_cl_ctlr_handle*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct twa_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct twa_softc*) ; 

TW_INT32
FUNC17(struct tw_cl_ctlr_handle *ctlr_handle)
{
	struct tw_cli_ctlr_context	*ctlr =
		(struct tw_cli_ctlr_context *)(ctlr_handle->cl_ctlr_ctxt);
	struct twa_softc		*sc = ctlr_handle->osl_ctlr_ctxt;
	struct tw_cli_req_context	*req;
	TW_INT32			reset_attempt = 1;
	TW_INT32			error = 0;

	FUNC3(2, ctlr_handle, FUNC12(), "entered");

	ctlr->reset_in_progress = TW_CL_TRUE;
	FUNC16(sc);


	/*
	 * Error back all requests in the complete, busy, and pending queues.
	 * If any request is already on its way to getting submitted, it's in
	 * none of these queues and so, will not be completed.  That request
	 * will continue its course and get submitted to the controller after
	 * the reset is done (and io_lock is released).
	 */
	FUNC5(ctlr);
	FUNC4(ctlr);
	FUNC6(ctlr);
	ctlr->internal_req_busy = TW_CL_FALSE;
	ctlr->get_more_aens     = TW_CL_FALSE;

	/* Soft reset the controller. */
	while (reset_attempt <= TW_CLI_MAX_RESET_ATTEMPTS) {
		if ((error = FUNC11(ctlr))) {
			FUNC2(ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
				0x1105, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Controller reset failed",
				"error = %d; attempt %d", error, reset_attempt++);
			reset_attempt++;
			continue;
		}

		/* Re-establish logical connection with the controller. */
		if ((error = FUNC8(ctlr,
				(TW_UINT16)(ctlr->max_simult_reqs),
				0, 0, 0, 0, 0, TW_CL_NULL, TW_CL_NULL, TW_CL_NULL,
				TW_CL_NULL, TW_CL_NULL))) {
			FUNC2(ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
				0x1106, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Can't initialize connection after reset",
				"error = %d", error);
			reset_attempt++;
			continue;
		}

#ifdef    TW_OSL_DEBUG
		tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
			0x1107, 0x3, TW_CL_SEVERITY_INFO_STRING,
			"Controller reset done!", " ");
#endif /* TW_OSL_DEBUG */
		break;
	} /* End of while */

	/* Move commands from the reset queue to the pending queue. */
	while ((req = FUNC10(ctlr, TW_CLI_RESET_Q)) != TW_CL_NULL) {
		FUNC14(req->req_handle);
		FUNC9(req, TW_CLI_PENDING_Q);
	}

	FUNC15(sc);
	FUNC7(ctlr);
	if ((FUNC1(&(ctlr->req_q_head[TW_CLI_PENDING_Q]))) != TW_CL_NULL)
		FUNC0(ctlr_handle,
			TWA_CONTROL_UNMASK_COMMAND_INTERRUPT);
	ctlr->reset_in_progress = TW_CL_FALSE;
	ctlr->reset_needed = TW_CL_FALSE;

	/* Request for a bus re-scan. */
	FUNC13(ctlr_handle);

	return(error);
}
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
struct tw_cli_ctlr_context {int /*<<< orphan*/ * req_q_head; int /*<<< orphan*/  active; scalar_t__ reset_in_progress; } ;
struct tw_cl_ctlr_handle {scalar_t__ cl_ctlr_ctxt; } ;
typedef  int TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT ; 
 int /*<<< orphan*/  TWA_CONTROL_CLEAR_HOST_INTERRUPT ; 
 int /*<<< orphan*/  TWA_CONTROL_MASK_COMMAND_INTERRUPT ; 
 int TWA_STATUS_ATTENTION_INTERRUPT ; 
 int TWA_STATUS_COMMAND_INTERRUPT ; 
 int TWA_STATUS_HOST_INTERRUPT ; 
 int TWA_STATUS_RESPONSE_INTERRUPT ; 
 size_t TW_CLI_PENDING_Q ; 
 int FUNC0 (struct tw_cl_ctlr_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 scalar_t__ TW_CL_NULL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TW_CL_TRUE ; 
 scalar_t__ FUNC3 (struct tw_cli_ctlr_context*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

TW_INT32
FUNC9(struct tw_cl_ctlr_handle *ctlr_handle)
{
	struct tw_cli_ctlr_context	*ctlr =
		(struct tw_cli_ctlr_context *)(ctlr_handle->cl_ctlr_ctxt);
	TW_UINT32			status_reg;
	TW_INT32			rc = TW_CL_FALSE;

	FUNC4(10, ctlr_handle, FUNC8(), "entered");

	/* If we don't have controller context, bail */
	if (ctlr == NULL)
		goto out;

	/*
	 * Bail If we get an interrupt while resetting, or shutting down.
	 */
	if (ctlr->reset_in_progress || !(ctlr->active))
		goto out;

	/* Read the status register to determine the type of interrupt. */
	status_reg = FUNC0(ctlr_handle);
	if (FUNC3(ctlr, status_reg))
		goto out;

	/* Clear the interrupt. */
	if (status_reg & TWA_STATUS_HOST_INTERRUPT) {
		FUNC4(6, ctlr_handle, FUNC8(),
			"Host interrupt");
		FUNC1(ctlr_handle,
			TWA_CONTROL_CLEAR_HOST_INTERRUPT);
	}
	if (status_reg & TWA_STATUS_ATTENTION_INTERRUPT) {
		FUNC4(6, ctlr_handle, FUNC8(),
			"Attention interrupt");
		rc |= TW_CL_TRUE; /* request for a deferred isr call */
		FUNC5(ctlr);
		FUNC1(ctlr_handle,
			TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT);
	}
	if (status_reg & TWA_STATUS_COMMAND_INTERRUPT) {
		FUNC4(6, ctlr_handle, FUNC8(),
			"Command interrupt");
		rc |= TW_CL_TRUE; /* request for a deferred isr call */
		FUNC6(ctlr);
		if ((FUNC2(&(ctlr->req_q_head[TW_CLI_PENDING_Q]))) == TW_CL_NULL)
			FUNC1(ctlr_handle,
				TWA_CONTROL_MASK_COMMAND_INTERRUPT);
	}
	if (status_reg & TWA_STATUS_RESPONSE_INTERRUPT) {
		FUNC4(10, ctlr_handle, FUNC8(),
			"Response interrupt");
		rc |= TW_CL_TRUE; /* request for a deferred isr call */
		FUNC7(ctlr);
	}
out:
	return(rc);
}
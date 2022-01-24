#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ status; } ;
union tw_cl_command_7k {TYPE_3__ param; } ;
struct tw_cli_req_context {TYPE_2__* cmd_pkt; int /*<<< orphan*/  error_code; struct tw_cli_ctlr_context* ctlr; } ;
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; void* get_more_aens; int /*<<< orphan*/  reset_in_progress; void* internal_req_busy; } ;
struct TYPE_4__ {union tw_cl_command_7k cmd_pkt_7k; } ;
struct TYPE_5__ {int /*<<< orphan*/  cmd_hdr; TYPE_1__ command; } ;
typedef  int /*<<< orphan*/  TW_VOID ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TW_CLI_FREE_Q ; 
 void* TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_CONTROLLER_ERROR ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct tw_cli_req_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

TW_VOID
FUNC6(struct tw_cli_req_context *req)
{
	struct tw_cli_ctlr_context	*ctlr = req->ctlr;
	union tw_cl_command_7k		*cmd =
		&(req->cmd_pkt->command.cmd_pkt_7k);
	TW_INT32			error;

	FUNC2(4, ctlr->ctlr_handle, FUNC5(), "entered");

	/*
	 * If the request was never submitted to the controller, the function
	 * that sets req->error is responsible for calling tw_cl_create_event.
	 */
	if (! req->error_code)
		if (cmd->param.status) {
#if       0
			tw_cli_create_ctlr_event(ctlr,
				TW_CL_MESSAGE_SOURCE_CONTROLLER_ERROR,
				&(req->cmd_pkt->cmd_hdr));
#endif // 0
			FUNC0(ctlr->ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
				0x1204, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"get/set_param failed",
				"status = %d", cmd->param.status);
		}

	ctlr->internal_req_busy = TW_CL_FALSE;
	FUNC4(req, TW_CLI_FREE_Q);

	if ((ctlr->get_more_aens) && (!(ctlr->reset_in_progress))) {
		ctlr->get_more_aens = TW_CL_FALSE;
		FUNC2(4, ctlr->ctlr_handle, FUNC5(),
			"Fetching more AEN's");
		if ((error = FUNC3(ctlr)))
			FUNC0(ctlr->ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
				0x1205, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Failed to fetch all AEN's from param_callback",
				"error = %d", error);
	}
}
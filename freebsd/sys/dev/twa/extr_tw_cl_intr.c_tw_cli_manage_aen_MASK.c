#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tw_cli_req_context {scalar_t__ data; } ;
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; int /*<<< orphan*/  interrupts_enabled; int /*<<< orphan*/  get_more_aens; int /*<<< orphan*/  internal_req_busy; } ;
struct TYPE_2__ {int error; } ;
struct tw_cl_command_header {TYPE_1__ status_block; } ;
typedef  int /*<<< orphan*/  TW_UINT32 ;
typedef  int TW_UINT16 ;
typedef  int TW_TIME ;

/* Variables and functions */
#define  TWA_AEN_QUEUE_EMPTY 129 
#define  TWA_AEN_SYNC_TIME_WITH_HOST 128 
 int /*<<< orphan*/  TWA_PARAM_TIME_SCHED_TIME ; 
 int /*<<< orphan*/  TWA_PARAM_TIME_TABLE ; 
 int /*<<< orphan*/  TW_CLI_FREE_Q ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_CONTROLLER_EVENT ; 
 int /*<<< orphan*/  TW_CL_NULL ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  TW_CL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ,struct tw_cl_command_header*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tw_cli_param_callback ; 
 int /*<<< orphan*/  FUNC3 (struct tw_cli_req_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 

TW_UINT16
FUNC7(struct tw_cli_ctlr_context *ctlr,
	struct tw_cli_req_context *req)
{
	struct tw_cl_command_header	*cmd_hdr;
	TW_UINT16			aen_code;
	TW_TIME				local_time;
	TW_TIME				sync_time;
	TW_UINT32			error;

	FUNC2(4, ctlr->ctlr_handle, FUNC5(), "entered");

	cmd_hdr = (struct tw_cl_command_header *)(req->data);
	aen_code = cmd_hdr->status_block.error;

	switch (aen_code) {
	case TWA_AEN_SYNC_TIME_WITH_HOST:
		FUNC2(4, ctlr->ctlr_handle, FUNC5(),
			"Received AEN_SYNC_TIME");
		/*
		 * Free the internal req pkt right here, since
		 * tw_cli_set_param will need it.
		 */
		ctlr->internal_req_busy = TW_CL_FALSE;
		FUNC3(req, TW_CLI_FREE_Q);

		/*
		 * We will use a callback in tw_cli_set_param only when
		 * interrupts are enabled and we can expect our callback
		 * to get called.  Setting the get_more_aens
		 * flag will make the callback continue to try to retrieve
		 * more AEN's.
		 */
		if (ctlr->interrupts_enabled)
			ctlr->get_more_aens = TW_CL_TRUE;
		/* Calculate time (in seconds) since last Sunday 12.00 AM. */
		local_time = FUNC6();
		sync_time = (local_time - (3 * 86400)) % 604800;
		if ((error = FUNC4(ctlr, TWA_PARAM_TIME_TABLE,
				TWA_PARAM_TIME_SCHED_TIME, 4,
				&sync_time,
				(ctlr->interrupts_enabled)
				? tw_cli_param_callback : TW_CL_NULL)))
			FUNC0(ctlr->ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
				0x1208, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Unable to sync time with ctlr",
				"error = %d", error);

		break;


	case TWA_AEN_QUEUE_EMPTY:
		FUNC2(4, ctlr->ctlr_handle, FUNC5(),
			"AEN queue empty");
		break;


	default:
		/* Queue the event. */

		FUNC2(4, ctlr->ctlr_handle, FUNC5(),
			"Queueing AEN");
		FUNC1(ctlr,
			TW_CL_MESSAGE_SOURCE_CONTROLLER_EVENT,
			cmd_hdr);
		break;
	} /* switch */
	return(aen_code);
}
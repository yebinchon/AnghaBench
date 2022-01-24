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
struct tw_cli_req_context {scalar_t__ state; scalar_t__ data; TYPE_3__* cmd_pkt; int /*<<< orphan*/  ctlr; int /*<<< orphan*/  error_code; struct tw_cli_req_context* tw_cli_callback; int /*<<< orphan*/  flags; } ;
struct tw_cli_ctlr_context {void* internal_req_busy; int /*<<< orphan*/  ctlr_handle; } ;
struct tw_cl_command_header {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {TYPE_1__ cmd_pkt_9k; } ;
struct TYPE_6__ {struct tw_cl_command_header cmd_hdr; TYPE_2__ command; } ;
typedef  scalar_t__ TW_UINT16 ;
typedef  scalar_t__ TW_TIME ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 scalar_t__ TWA_AEN_QUEUE_EMPTY ; 
 scalar_t__ TWA_AEN_SYNC_TIME_WITH_HOST ; 
 int /*<<< orphan*/  TW_CLI_FREE_Q ; 
 scalar_t__ TW_CLI_REQUEST_TIMEOUT_PERIOD ; 
 int /*<<< orphan*/  TW_CLI_REQ_FLAGS_INTERNAL ; 
 scalar_t__ TW_CLI_REQ_STATE_BUSY ; 
 scalar_t__ TW_CLI_REQ_STATE_COMPLETE ; 
 scalar_t__ TW_CLI_REQ_STATE_PENDING ; 
 void* TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_CONTROLLER_ERROR ; 
 struct tw_cli_req_context* TW_CL_NULL ; 
 int /*<<< orphan*/  TW_OSL_EBUSY ; 
 int /*<<< orphan*/  TW_OSL_ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ,struct tw_cl_command_header*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct tw_cli_req_context* FUNC2 (struct tw_cli_ctlr_context*) ; 
 scalar_t__ FUNC3 (struct tw_cli_ctlr_context*,struct tw_cli_req_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tw_cli_req_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tw_cli_req_context*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 

TW_INT32
FUNC9(struct tw_cli_ctlr_context *ctlr)
{
	struct tw_cli_req_context	*req;
	struct tw_cl_command_header	*cmd_hdr;
	TW_TIME				end_time;
	TW_UINT16			aen_code;
	TW_INT32			error;

	FUNC1(4, ctlr->ctlr_handle, FUNC7(), "entered");

	for (;;) {
		if ((req = FUNC2(ctlr
			)) == TW_CL_NULL) {
			error = TW_OSL_EBUSY;
			break;
		}

		req->flags |= TW_CLI_REQ_FLAGS_INTERNAL;
		req->tw_cli_callback = TW_CL_NULL;
		if ((error = FUNC6(req,
				0x03 /* REQUEST_SENSE */))) {
			FUNC1(1, ctlr->ctlr_handle,
				FUNC7(),
				"Cannot send command to fetch aen");
			break;
		}

		end_time = FUNC8() +
			TW_CLI_REQUEST_TIMEOUT_PERIOD;
		do {
			if ((error = req->error_code))
				/*
				 * This will take care of completion due to
				 * a reset, or a failure in
				 * tw_cli_submit_pending_queue.
				 */
				goto out;

			FUNC4(req->ctlr);

			if ((req->state != TW_CLI_REQ_STATE_BUSY) &&
				(req->state != TW_CLI_REQ_STATE_PENDING))
				break;
		} while (FUNC8() <= end_time);

		if (req->state != TW_CLI_REQ_STATE_COMPLETE) {
			error = TW_OSL_ETIMEDOUT;
			break;
		}

		if ((error = req->cmd_pkt->command.cmd_pkt_9k.status)) {
			cmd_hdr = &req->cmd_pkt->cmd_hdr;
#if       0
			tw_cli_create_ctlr_event(ctlr,
				TW_CL_MESSAGE_SOURCE_CONTROLLER_ERROR,
				cmd_hdr);
#endif // 0
			break;
		}

		aen_code = FUNC3(ctlr, req);
		if (aen_code == TWA_AEN_QUEUE_EMPTY)
			break;
		if (aen_code == TWA_AEN_SYNC_TIME_WITH_HOST)
			continue;

		ctlr->internal_req_busy = TW_CL_FALSE;
		FUNC5(req, TW_CLI_FREE_Q);
	}

out:
	if (req) {
		if (req->data)
			ctlr->internal_req_busy = TW_CL_FALSE;
		FUNC5(req, TW_CLI_FREE_Q);
	}
	return(error);
}
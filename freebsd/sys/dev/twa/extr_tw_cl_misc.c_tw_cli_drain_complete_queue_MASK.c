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
struct tw_cli_req_context {int flags; int /*<<< orphan*/  req_handle; int /*<<< orphan*/  (* tw_osl_callback ) (int /*<<< orphan*/ ) ;void* status; struct tw_cli_req_context* orig_req; int /*<<< orphan*/  (* tw_cli_callback ) (struct tw_cli_req_context*) ;void* error_code; } ;
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; } ;
struct tw_cl_req_packet {int flags; int /*<<< orphan*/  req_handle; int /*<<< orphan*/  (* tw_osl_callback ) (int /*<<< orphan*/ ) ;void* status; struct tw_cl_req_packet* orig_req; int /*<<< orphan*/  (* tw_cli_callback ) (struct tw_cli_req_context*) ;void* error_code; } ;
typedef  int /*<<< orphan*/  TW_VOID ;

/* Variables and functions */
 int /*<<< orphan*/  TW_CLI_COMPLETE_Q ; 
 int /*<<< orphan*/  TW_CLI_FREE_Q ; 
 int TW_CLI_REQ_FLAGS_INTERNAL ; 
 int TW_CLI_REQ_FLAGS_PASSTHRU ; 
 int /*<<< orphan*/  TW_CLI_RESET_Q ; 
 void* TW_CL_ERR_REQ_BUS_RESET ; 
 struct tw_cli_req_context* TW_CL_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct tw_cli_req_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tw_cli_req_context*,int /*<<< orphan*/ ) ; 
 struct tw_cli_req_context* FUNC4 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

TW_VOID
FUNC7(struct tw_cli_ctlr_context *ctlr)
{
	struct tw_cli_req_context	*req;
	struct tw_cl_req_packet		*req_pkt;

	FUNC2(3, ctlr->ctlr_handle, FUNC5(), "entered");

	/* Walk the busy queue. */
	while ((req = FUNC4(ctlr, TW_CLI_COMPLETE_Q)) !=
		TW_CL_NULL) {
		if (req->flags & TW_CLI_REQ_FLAGS_INTERNAL) {
			/*
			 * It's an internal request.  Set the appropriate
			 * error and call the CL internal callback if there's
			 * one.  If the request originator is polling for
			 * completion, he should be checking req->error to
			 * determine that the request did not go through.
			 * The request originators are responsible for the
			 * clean-up.
			 */
			req->error_code = TW_CL_ERR_REQ_BUS_RESET;
			if (req->tw_cli_callback)
				req->tw_cli_callback(req);
		} else if (req->flags & TW_CLI_REQ_FLAGS_PASSTHRU) {
			/* It's a passthru request.  Complete it. */
			if ((req_pkt = req->orig_req) != TW_CL_NULL) {
				req_pkt->status = TW_CL_ERR_REQ_BUS_RESET;

				if (req_pkt->tw_osl_callback)
					req_pkt->tw_osl_callback(req->req_handle);
			}
			FUNC3(req, TW_CLI_FREE_Q);
		} else {
			/* It's an external (SCSI) request.  Add it to the reset queue. */
			FUNC6(req->req_handle);
			FUNC3(req, TW_CLI_RESET_Q);
		}
	} /* End of while loop */
}
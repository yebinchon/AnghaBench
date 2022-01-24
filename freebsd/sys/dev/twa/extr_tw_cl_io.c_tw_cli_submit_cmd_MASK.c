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
struct tw_cli_req_context {int flags; scalar_t__ state; scalar_t__ cmd_pkt_phys; scalar_t__ orig_req; struct tw_cli_ctlr_context* ctlr; } ;
struct tw_cli_ctlr_context {scalar_t__ device_id; int flags; int /*<<< orphan*/  io_lock; struct tw_cl_ctlr_handle* ctlr_handle; } ;
struct tw_cl_req_packet {int flags; } ;
struct tw_cl_ctlr_handle {int dummy; } ;
struct tw_cl_command_header {int dummy; } ;
typedef  int TW_UINT64 ;
typedef  int TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TWA_COMMAND_QUEUE_OFFSET ; 
 int /*<<< orphan*/  TWA_COMMAND_QUEUE_OFFSET_HIGH ; 
 int /*<<< orphan*/  TWA_COMMAND_QUEUE_OFFSET_LOW ; 
 int /*<<< orphan*/  TWA_CONTROL_UNMASK_COMMAND_INTERRUPT ; 
 int TWA_STATUS_COMMAND_QUEUE_FULL ; 
 int /*<<< orphan*/  TW_CLI_BUSY_Q ; 
 int /*<<< orphan*/  TW_CLI_PENDING_Q ; 
 int FUNC0 (struct tw_cl_ctlr_handle*) ; 
 int TW_CLI_REQ_FLAGS_INTERNAL ; 
 scalar_t__ TW_CLI_REQ_STATE_BUSY ; 
 scalar_t__ TW_CLI_REQ_STATE_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 
 int TW_CL_64BIT_ADDRESSES ; 
 scalar_t__ TW_CL_DEVICE_ID_9K_E ; 
 scalar_t__ TW_CL_DEVICE_ID_9K_SA ; 
 int TW_CL_REQ_RETRY_ON_BUSY ; 
 int /*<<< orphan*/  TW_OSL_EBUSY ; 
 int /*<<< orphan*/  FUNC2 (int,struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tw_cli_req_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,int,int) ; 

TW_INT32
FUNC8(struct tw_cli_req_context *req)
{
	struct tw_cli_ctlr_context	*ctlr = req->ctlr;
	struct tw_cl_ctlr_handle	*ctlr_handle = ctlr->ctlr_handle;
	TW_UINT32			status_reg;
	TW_INT32			error = 0;

	FUNC2(10, ctlr_handle, FUNC4(), "entered");

	/* Serialize access to the controller cmd queue. */
	FUNC6(ctlr_handle, ctlr->io_lock);

	/* For 9650SE first write low 4 bytes */
	if ((ctlr->device_id == TW_CL_DEVICE_ID_9K_E) ||
	    (ctlr->device_id == TW_CL_DEVICE_ID_9K_SA))
		FUNC7(ctlr_handle,
				 TWA_COMMAND_QUEUE_OFFSET_LOW,
				 (TW_UINT32)(req->cmd_pkt_phys + sizeof(struct tw_cl_command_header)), 4);

	status_reg = FUNC0(ctlr_handle);
	if (status_reg & TWA_STATUS_COMMAND_QUEUE_FULL) {
		struct tw_cl_req_packet	*req_pkt =
			(struct tw_cl_req_packet *)(req->orig_req);

		FUNC2(7, ctlr_handle, FUNC4(),
			"Cmd queue full");

		if ((req->flags & TW_CLI_REQ_FLAGS_INTERNAL)
			|| ((req_pkt) &&
			(req_pkt->flags & TW_CL_REQ_RETRY_ON_BUSY))
			) {
			if (req->state != TW_CLI_REQ_STATE_PENDING) {
				FUNC2(2, ctlr_handle,
					FUNC4(),
					"pending internal/ioctl request");
				req->state = TW_CLI_REQ_STATE_PENDING;
				FUNC3(req, TW_CLI_PENDING_Q);
				/* Unmask command interrupt. */
				FUNC1(ctlr_handle,
					TWA_CONTROL_UNMASK_COMMAND_INTERRUPT);
			} else
				error = TW_OSL_EBUSY;
		} else {
			error = TW_OSL_EBUSY;
		}
	} else {
		FUNC2(10, ctlr_handle, FUNC4(),
			"Submitting command");

		/* Insert command into busy queue */
		req->state = TW_CLI_REQ_STATE_BUSY;
		FUNC3(req, TW_CLI_BUSY_Q);

		if ((ctlr->device_id == TW_CL_DEVICE_ID_9K_E) ||
		    (ctlr->device_id == TW_CL_DEVICE_ID_9K_SA)) {
			/* Now write the high 4 bytes */
			FUNC7(ctlr_handle, 
					 TWA_COMMAND_QUEUE_OFFSET_HIGH,
					 (TW_UINT32)(((TW_UINT64)(req->cmd_pkt_phys + sizeof(struct tw_cl_command_header)))>>32), 4);
		} else {
			if (ctlr->flags & TW_CL_64BIT_ADDRESSES) {
				/* First write the low 4 bytes, then the high 4. */
				FUNC7(ctlr_handle,
						 TWA_COMMAND_QUEUE_OFFSET_LOW,
						 (TW_UINT32)(req->cmd_pkt_phys + sizeof(struct tw_cl_command_header)), 4);
				FUNC7(ctlr_handle, 
						 TWA_COMMAND_QUEUE_OFFSET_HIGH,
						 (TW_UINT32)(((TW_UINT64)(req->cmd_pkt_phys + sizeof(struct tw_cl_command_header)))>>32), 4);
			} else
				FUNC7(ctlr_handle, 
						 TWA_COMMAND_QUEUE_OFFSET,
						 (TW_UINT32)(req->cmd_pkt_phys + sizeof(struct tw_cl_command_header)), 4);
		}
	}

	FUNC5(ctlr_handle, ctlr->io_lock);

	return(error);
}
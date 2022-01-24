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
struct tw_cli_req_context {int request_id; struct tw_cli_ctlr_context* ctlr; scalar_t__ cmd_pkt_phys; struct tw_cl_command_packet* cmd_pkt; } ;
struct tw_cli_ctlr_context {int device_id; int flags; int max_simult_reqs; int max_aens_supported; int /*<<< orphan*/  active; struct tw_cl_event_packet* aen_queue; scalar_t__ cmd_pkt_phys; struct tw_cl_command_packet* cmd_pkt_buf; struct tw_cli_req_context* req_ctxt_buf; scalar_t__ internal_req_data_phys; int /*<<< orphan*/ * internal_req_data; int /*<<< orphan*/ * io_lock; int /*<<< orphan*/  io_lock_handle; int /*<<< orphan*/ * gen_lock; int /*<<< orphan*/  gen_lock_handle; int /*<<< orphan*/  sg_size_factor; int /*<<< orphan*/  arch_id; struct tw_cl_ctlr_handle* ctlr_handle; } ;
struct tw_cl_event_packet {int dummy; } ;
struct tw_cl_ctlr_handle {struct tw_cli_ctlr_context* cl_ctlr_ctxt; } ;
struct tw_cl_command_packet {int dummy; } ;
typedef  int /*<<< orphan*/  TW_VOID ;
typedef  int /*<<< orphan*/  TW_UINT8 ;
typedef  scalar_t__ TW_UINT64 ;
typedef  int TW_UINT32 ;
typedef  int TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TW_CLI_BUSY_Q ; 
 int /*<<< orphan*/  TW_CLI_COMPLETE_Q ; 
 int /*<<< orphan*/  TW_CLI_FREE_Q ; 
 int /*<<< orphan*/  TW_CLI_PENDING_Q ; 
 int /*<<< orphan*/  TW_CLI_RESET_Q ; 
 int TW_CLI_SECTOR_SIZE ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int TW_CL_MAX_SIMULTANEOUS_REQUESTS ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 int /*<<< orphan*/ * TW_CL_NULL ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int TW_CL_START_CTLR_ONLY ; 
 int /*<<< orphan*/  TW_CL_TRUE ; 
 int TW_OSL_EBIG ; 
 int TW_OSL_ENOMEM ; 
 int TW_OSL_ESUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int,struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tw_cli_req_context*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tw_cli_ctlr_context*) ; 
 int FUNC9 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct tw_cl_ctlr_handle*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

TW_INT32
FUNC13(struct tw_cl_ctlr_handle *ctlr_handle, TW_UINT32 flags,
	TW_INT32 device_id, TW_INT32 max_simult_reqs, TW_INT32 max_aens,
	TW_VOID *non_dma_mem, TW_VOID *dma_mem, TW_UINT64 dma_mem_phys
	)
{
	struct tw_cli_ctlr_context	*ctlr;
	struct tw_cli_req_context	*req;
	TW_UINT8			*free_non_dma_mem;
	TW_INT32			error = TW_OSL_ESUCCESS;
	TW_INT32			i;

	FUNC3(3, ctlr_handle, FUNC10(), "entered");

	if (flags & TW_CL_START_CTLR_ONLY) {
		ctlr = (struct tw_cli_ctlr_context *)
			(ctlr_handle->cl_ctlr_ctxt);
		goto start_ctlr;
	}

	if (max_simult_reqs > TW_CL_MAX_SIMULTANEOUS_REQUESTS) {
		FUNC2(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x1000, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Too many simultaneous requests to support!",
			"requested = %d, supported = %d, error = %d\n",
			max_simult_reqs, TW_CL_MAX_SIMULTANEOUS_REQUESTS,
			TW_OSL_EBIG);
		return(TW_OSL_EBIG);
	}

	if ((non_dma_mem == TW_CL_NULL) || (dma_mem == TW_CL_NULL)
		) {
		FUNC2(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x1001, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Insufficient memory for Common Layer's internal usage",
			"error = %d\n", TW_OSL_ENOMEM);
		return(TW_OSL_ENOMEM);
	}

	FUNC12(non_dma_mem, sizeof(struct tw_cli_ctlr_context) +
		(sizeof(struct tw_cli_req_context) * max_simult_reqs) +
		(sizeof(struct tw_cl_event_packet) * max_aens));

	FUNC12(dma_mem,
		(sizeof(struct tw_cl_command_packet) *
		max_simult_reqs) +
		TW_CLI_SECTOR_SIZE);

	free_non_dma_mem = (TW_UINT8 *)non_dma_mem;

	ctlr = (struct tw_cli_ctlr_context *)free_non_dma_mem;
	free_non_dma_mem += sizeof(struct tw_cli_ctlr_context);

	ctlr_handle->cl_ctlr_ctxt = ctlr;
	ctlr->ctlr_handle = ctlr_handle;

	ctlr->device_id = (TW_UINT32)device_id;
	ctlr->arch_id = FUNC0(device_id);
	ctlr->flags = flags;
	ctlr->sg_size_factor = FUNC1(device_id);
	ctlr->max_simult_reqs = max_simult_reqs;
	ctlr->max_aens_supported = max_aens;

	/* Initialize queues of CL internal request context packets. */
	FUNC6(ctlr, TW_CLI_FREE_Q);
	FUNC6(ctlr, TW_CLI_BUSY_Q);
	FUNC6(ctlr, TW_CLI_PENDING_Q);
	FUNC6(ctlr, TW_CLI_COMPLETE_Q);
	FUNC6(ctlr, TW_CLI_RESET_Q);

	/* Initialize all locks used by CL. */
	ctlr->gen_lock = &(ctlr->gen_lock_handle);
	FUNC11(ctlr_handle, "tw_cl_gen_lock", ctlr->gen_lock);
	ctlr->io_lock = &(ctlr->io_lock_handle);
	FUNC11(ctlr_handle, "tw_cl_io_lock", ctlr->io_lock);

	/* Initialize CL internal request context packets. */
	ctlr->req_ctxt_buf = (struct tw_cli_req_context *)free_non_dma_mem;
	free_non_dma_mem += (sizeof(struct tw_cli_req_context) *
		max_simult_reqs);

	ctlr->cmd_pkt_buf = (struct tw_cl_command_packet *)dma_mem;
	ctlr->cmd_pkt_phys = dma_mem_phys;

	ctlr->internal_req_data = (TW_UINT8 *)
		(ctlr->cmd_pkt_buf +
		max_simult_reqs);
	ctlr->internal_req_data_phys = ctlr->cmd_pkt_phys +
		(sizeof(struct tw_cl_command_packet) *
		max_simult_reqs);

	for (i = 0; i < max_simult_reqs; i++) {
		req = &(ctlr->req_ctxt_buf[i]);

		req->cmd_pkt = &(ctlr->cmd_pkt_buf[i]);
		req->cmd_pkt_phys = ctlr->cmd_pkt_phys +
			(i * sizeof(struct tw_cl_command_packet));

		req->request_id = i;
		req->ctlr = ctlr;

		/* Insert request into the free queue. */
		FUNC7(req, TW_CLI_FREE_Q);
	}

	/* Initialize the AEN queue. */
	ctlr->aen_queue = (struct tw_cl_event_packet *)free_non_dma_mem;


start_ctlr:
	/*
	 * Disable interrupts.  Interrupts will be enabled in tw_cli_start_ctlr
	 * (only) if initialization succeeded.
	 */
	FUNC4(ctlr);

	/* Initialize the controller. */
	if ((error = FUNC9(ctlr))) {
		/* Soft reset the controller, and try one more time. */
		FUNC2(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x1002, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Controller initialization failed. Retrying...",
			"error = %d\n", error);
		if ((error = FUNC8(ctlr))) {
			FUNC2(ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
				0x1003, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Controller soft reset failed",
				"error = %d\n", error);
			return(error);
		} else if ((error = FUNC9(ctlr))) {
			FUNC2(ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
				0x1004, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Controller initialization retry failed",
				"error = %d\n", error);
			return(error);
		}
	}
	/* Notify some info about the controller to the OSL. */
	FUNC5(ctlr);

	/* Mark the controller active. */
	ctlr->active = TW_CL_TRUE;
	return(error);
}
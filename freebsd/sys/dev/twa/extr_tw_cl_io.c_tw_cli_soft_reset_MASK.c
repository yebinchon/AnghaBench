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
struct tw_cli_ctlr_context {scalar_t__ device_id; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  reset_phase1_in_progress; struct tw_cl_ctlr_handle* ctlr_handle; } ;
struct tw_cl_ctlr_handle {int dummy; } ;
typedef  int TW_UINT32 ;
typedef  int TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TWA_AEN_SOFT_RESET ; 
 int /*<<< orphan*/  TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT ; 
 int /*<<< orphan*/  TWA_RESET_PHASE1_NOTIFICATION_RESPONSE ; 
 int TWA_RESET_PHASE1_WAIT_TIME_MS ; 
 int TWA_STATUS_ATTENTION_INTERRUPT ; 
 int TWA_STATUS_MICROCONTROLLER_READY ; 
 int /*<<< orphan*/  TW_CLI_RESET_TIMEOUT_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct tw_cl_ctlr_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 
 scalar_t__ TW_CL_DEVICE_ID_9K_E ; 
 scalar_t__ TW_CL_DEVICE_ID_9K_SA ; 
 scalar_t__ TW_CL_DEVICE_ID_9K_X ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_INFO_STRING ; 
 int /*<<< orphan*/  TW_CL_TRUE ; 
 scalar_t__ TW_OSL_ESUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct tw_cli_ctlr_context*) ; 
 int FUNC5 (struct tw_cli_ctlr_context*) ; 
 int FUNC6 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tw_cli_ctlr_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 

TW_INT32
FUNC13(struct tw_cli_ctlr_context *ctlr)
{
	struct tw_cl_ctlr_handle	*ctlr_handle = ctlr->ctlr_handle;
	int				found;
	int				loop_count;
	TW_UINT32			error;

	FUNC3(1, ctlr_handle, FUNC9(), "entered");

	FUNC2(ctlr_handle, TW_CL_FALSE,
		TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
		0x1108, 0x3, TW_CL_SEVERITY_INFO_STRING,
		"Resetting controller...",
		" ");

	/* Don't let any new commands get submitted to the controller. */
	FUNC12(ctlr_handle, ctlr->io_lock);

	FUNC0(ctlr_handle);

	if ((ctlr->device_id == TW_CL_DEVICE_ID_9K_X) ||
	    (ctlr->device_id == TW_CL_DEVICE_ID_9K_E) ||
	    (ctlr->device_id == TW_CL_DEVICE_ID_9K_SA)) {
		/*
		 * There's a hardware bug in the G133 ASIC, which can lead to
		 * PCI parity errors and hangs, if the host accesses any
		 * registers when the firmware is resetting the hardware, as
		 * part of a hard/soft reset.  The window of time when the
		 * problem can occur is about 10 ms.  Here, we will handshake
		 * with the firmware to find out when the firmware is pulling
		 * down the hardware reset pin, and wait for about 500 ms to
		 * make sure we don't access any hardware registers (for
		 * polling) during that window.
		 */
		ctlr->reset_phase1_in_progress = TW_CL_TRUE;
		loop_count = 0;
		do {
			found = (FUNC7(ctlr, TWA_RESET_PHASE1_NOTIFICATION_RESPONSE) == TW_OSL_ESUCCESS);
			FUNC10(10);
			loop_count++;
			error = 0x7888;
		} while (!found && (loop_count < 6000000)); /* Loop for no more than 60 seconds */

		if (!found) {
			FUNC2(ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
				0x1109, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Missed firmware handshake after soft-reset",
				"error = %d", error);
			FUNC11(ctlr_handle, ctlr->io_lock);
			return(error);
		}

		FUNC10(TWA_RESET_PHASE1_WAIT_TIME_MS * 1000);
		ctlr->reset_phase1_in_progress = TW_CL_FALSE;
	}

	if ((error = FUNC8(ctlr,
			TWA_STATUS_MICROCONTROLLER_READY |
			TWA_STATUS_ATTENTION_INTERRUPT,
			TW_CLI_RESET_TIMEOUT_PERIOD))) {
		FUNC2(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
			0x1109, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Micro-ctlr not ready/No attn intr after reset",
			"error = %d", error);
		FUNC11(ctlr_handle, ctlr->io_lock);
		return(error);
	}

	FUNC1(ctlr_handle,
		TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT);

	if ((error = FUNC5(ctlr))) {
		FUNC2(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x110A, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Can't drain response queue after reset",
			"error = %d", error);
		FUNC11(ctlr_handle, ctlr->io_lock);
		return(error);
	}
	
	FUNC11(ctlr_handle, ctlr->io_lock);

	if ((error = FUNC4(ctlr))) {
		FUNC2(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x110B, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Can't drain AEN queue after reset",
			"error = %d", error);
		return(error);
	}
	
	if ((error = FUNC6(ctlr, TWA_AEN_SOFT_RESET))) {
		FUNC2(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
			0x110C, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Reset not reported by controller",
			"error = %d", error);
		return(error);
	}

	return(TW_OSL_ESUCCESS);
}
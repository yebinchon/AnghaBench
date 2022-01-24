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
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; void* fw_on_ctlr_build; void* fw_on_ctlr_branch; void* fw_on_ctlr_srl; int /*<<< orphan*/  operating_mode; void* working_build; void* working_branch; void* working_srl; scalar_t__ arch_id; scalar_t__ max_simult_reqs; } ;
typedef  int TW_UINT32 ;
typedef  void* TW_UINT16 ;
typedef  int TW_INT32 ;

/* Variables and functions */
 void* TWA_BASE_FW_BRANCH ; 
 void* TWA_BASE_FW_BUILD ; 
 void* TWA_BASE_FW_SRL ; 
 int /*<<< orphan*/  TWA_BASE_MODE ; 
 int TWA_CTLR_FW_COMPATIBLE ; 
 int TWA_CTLR_FW_SAME_OR_NEWER ; 
 void* FUNC0 (scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 void* TWA_CURRENT_FW_SRL ; 
 int /*<<< orphan*/  TWA_EXTENDED_INIT_CONNECT ; 
 int /*<<< orphan*/  TWA_STATUS_MICROCONTROLLER_READY ; 
 int /*<<< orphan*/  TW_CLI_REQUEST_TIMEOUT_PERIOD ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_WARNING_STRING ; 
 int TW_OSL_ESUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct tw_cli_ctlr_context*) ; 
 int FUNC5 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct tw_cli_ctlr_context*) ; 
 int FUNC7 (struct tw_cli_ctlr_context*,void*,int /*<<< orphan*/ ,void*,void*,void*,void*,void**,void**,void**,void**,int*) ; 
 int FUNC8 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

TW_INT32
FUNC10(struct tw_cli_ctlr_context *ctlr)
{
	TW_UINT16	fw_on_ctlr_srl = 0;
	TW_UINT16	fw_on_ctlr_arch_id = 0;
	TW_UINT16	fw_on_ctlr_branch = 0;
	TW_UINT16	fw_on_ctlr_build = 0;
	TW_UINT32	init_connect_result = 0;
	TW_INT32	error = TW_OSL_ESUCCESS;

	FUNC3(3, ctlr->ctlr_handle, FUNC9(), "entered");

	/* Wait for the controller to become ready. */
	if ((error = FUNC8(ctlr,
			TWA_STATUS_MICROCONTROLLER_READY,
			TW_CLI_REQUEST_TIMEOUT_PERIOD))) {
		FUNC2(ctlr->ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x1009, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Microcontroller not ready",
			"error = %d", error);
		return(error);
	}
	/* Drain the response queue. */
	if ((error = FUNC5(ctlr))) {
		FUNC2(ctlr->ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x100A, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Can't drain response queue",
			"error = %d", error);
		return(error);
	}
	/* Establish a logical connection with the controller. */
	if ((error = FUNC7(ctlr,
			(TW_UINT16)(ctlr->max_simult_reqs),
			TWA_EXTENDED_INIT_CONNECT, TWA_CURRENT_FW_SRL,
			(TW_UINT16)(ctlr->arch_id),
			FUNC0(ctlr->arch_id),
			FUNC1(ctlr->arch_id),
			&fw_on_ctlr_srl, &fw_on_ctlr_arch_id,
			&fw_on_ctlr_branch, &fw_on_ctlr_build,
			&init_connect_result))) {
		FUNC2(ctlr->ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x100B, 0x2, TW_CL_SEVERITY_WARNING_STRING,
			"Can't initialize connection in current mode",
			"error = %d", error);
		return(error);
	}
	{
		 /* See if we can at least work with the firmware on the
                 * controller in the current mode.
		 */
		if (init_connect_result & TWA_CTLR_FW_COMPATIBLE) {
			/* Yes, we can.  Make note of the operating mode. */
			if (init_connect_result & TWA_CTLR_FW_SAME_OR_NEWER) {
				ctlr->working_srl = TWA_CURRENT_FW_SRL;
				ctlr->working_branch =
					FUNC0(ctlr->arch_id);
				ctlr->working_build =
					FUNC1(ctlr->arch_id);
			} else {
				ctlr->working_srl = fw_on_ctlr_srl;
				ctlr->working_branch = fw_on_ctlr_branch;
				ctlr->working_build = fw_on_ctlr_build;
			}
		} else {
			/*
			 * No, we can't.  See if we can at least work with
			 * it in the base mode.
			 */
			FUNC2(ctlr->ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
				0x1010, 0x2, TW_CL_SEVERITY_WARNING_STRING,
				"Driver/Firmware mismatch. "
				"Negotiating for base level...",
				" ");
			if ((error = FUNC7(ctlr,
					(TW_UINT16)(ctlr->max_simult_reqs),
					TWA_EXTENDED_INIT_CONNECT,
					TWA_BASE_FW_SRL,
					(TW_UINT16)(ctlr->arch_id),
					TWA_BASE_FW_BRANCH, TWA_BASE_FW_BUILD,
					&fw_on_ctlr_srl, &fw_on_ctlr_arch_id,
					&fw_on_ctlr_branch, &fw_on_ctlr_build,
					&init_connect_result))) {
				FUNC2(ctlr->ctlr_handle,
					TW_CL_FALSE,
					TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
					0x1011, 0x1,
					TW_CL_SEVERITY_ERROR_STRING,
					"Can't initialize connection in "
					"base mode",
					" ");
				return(error);
			}
			if (!(init_connect_result & TWA_CTLR_FW_COMPATIBLE)) {
				/*
				 * The firmware on the controller is not even
				 * compatible with our base mode.  We cannot
				 * work with it.  Bail...
				 */
				return(1);
			}
			/*
			 * We can work with this firmware, but only in
			 * base mode.
			 */
			ctlr->working_srl = TWA_BASE_FW_SRL;
			ctlr->working_branch = TWA_BASE_FW_BRANCH;
			ctlr->working_build = TWA_BASE_FW_BUILD;
			ctlr->operating_mode = TWA_BASE_MODE;
		}
		ctlr->fw_on_ctlr_srl = fw_on_ctlr_srl;
		ctlr->fw_on_ctlr_branch = fw_on_ctlr_branch;
		ctlr->fw_on_ctlr_build = fw_on_ctlr_build;
	}

	/* Drain the AEN queue */
	if ((error = FUNC4(ctlr)))
		/* 
		 * We will just print that we couldn't drain the AEN queue.
		 * There's no need to bail out.
		 */
		FUNC2(ctlr->ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x1014, 0x2, TW_CL_SEVERITY_WARNING_STRING,
			"Can't drain AEN queue",
			"error = %d", error);

	/* Enable interrupts. */
	FUNC6(ctlr);

	return(TW_OSL_ESUCCESS);
}
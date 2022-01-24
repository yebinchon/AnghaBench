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
struct tw_cli_ctlr_context {scalar_t__ device_id; struct tw_cl_ctlr_handle* ctlr_handle; int /*<<< orphan*/  reset_in_progress; int /*<<< orphan*/  reset_phase1_in_progress; } ;
struct tw_cl_ctlr_handle {int dummy; } ;
typedef  int TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_INT8 ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TWA_CONTROL_CLEAR_PARITY_ERROR ; 
 int /*<<< orphan*/  TWA_CONTROL_CLEAR_PCI_ABORT ; 
 int /*<<< orphan*/  TWA_CONTROL_CLEAR_QUEUE_ERROR ; 
 int /*<<< orphan*/  TWA_PCI_CONFIG_CLEAR_PARITY_ERROR ; 
 int /*<<< orphan*/  TWA_PCI_CONFIG_CLEAR_PCI_ABORT ; 
 int TWA_STATUS_MICROCONTROLLER_READY ; 
 int TWA_STATUS_PCI_ABORT_INTERRUPT ; 
 int TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT ; 
 int TWA_STATUS_QUEUE_ERROR_INTERRUPT ; 
 int TWA_STATUS_UNEXPECTED_BITS ; 
 int /*<<< orphan*/  TW_CLI_PCI_CONFIG_STATUS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 
 scalar_t__ TW_CL_DEVICE_ID_9K_E ; 
 scalar_t__ TW_CL_DEVICE_ID_9K_SA ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  TW_OSL_EGENFAILURE ; 
 int /*<<< orphan*/  TW_OSL_ESUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

TW_INT32
FUNC7(struct tw_cli_ctlr_context *ctlr, TW_UINT32 status_reg)
{
	struct tw_cl_ctlr_handle	*ctlr_handle = ctlr->ctlr_handle;
	TW_INT32			error = TW_OSL_ESUCCESS;

	FUNC2(8, ctlr->ctlr_handle, FUNC4(), "entered");

	/* Check if the 'micro-controller ready' bit is not set. */
	if (!(status_reg & TWA_STATUS_MICROCONTROLLER_READY)) {
		TW_INT8	desc[200];

		FUNC5(desc, 200);
		if (!(ctlr->reset_phase1_in_progress)) {
			FUNC1(ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
				0x1301, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Missing expected status bit(s)",
				"status reg = 0x%x; Missing bits: %s",
				status_reg,
				FUNC3(
					TWA_STATUS_MICROCONTROLLER_READY,
					desc));
			error = TW_OSL_EGENFAILURE;
		}
	}

	/* Check if any error bits are set. */
	if ((status_reg & TWA_STATUS_UNEXPECTED_BITS) != 0) {
		TW_INT8	desc[200];

		FUNC5(desc, 200);

		/* Skip queue error msgs during 9650SE/9690SA reset */
		if (((ctlr->device_id != TW_CL_DEVICE_ID_9K_E) &&
		     (ctlr->device_id != TW_CL_DEVICE_ID_9K_SA)) ||
		    (!(ctlr->reset_in_progress)) ||
		    ((status_reg & TWA_STATUS_QUEUE_ERROR_INTERRUPT) == 0))
		FUNC1(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
			0x1302, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Unexpected status bit(s)",
			"status reg = 0x%x Unexpected bits: %s",
			status_reg & TWA_STATUS_UNEXPECTED_BITS,
			FUNC3(status_reg &
				TWA_STATUS_UNEXPECTED_BITS, desc));

		if (status_reg & TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT) {
			FUNC1(ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
				0x1303, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"PCI parity error: clearing... "
				"Re-seat/move/replace card",
				"status reg = 0x%x %s",
				status_reg,
				FUNC3(status_reg, desc));
			FUNC0(ctlr->ctlr_handle,
				TWA_CONTROL_CLEAR_PARITY_ERROR);

#ifdef TW_OSL_PCI_CONFIG_ACCESSIBLE
			tw_osl_write_pci_config(ctlr->ctlr_handle,
				TW_CLI_PCI_CONFIG_STATUS_OFFSET,
				TWA_PCI_CONFIG_CLEAR_PARITY_ERROR, 2);
#endif /* TW_OSL_PCI_CONFIG_ACCESSIBLE */
		
		}

		if (status_reg & TWA_STATUS_PCI_ABORT_INTERRUPT) {
			FUNC1(ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
				0x1304, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"PCI abort: clearing... ",
				"status reg = 0x%x %s",
				status_reg,
				FUNC3(status_reg, desc));
			FUNC0(ctlr->ctlr_handle,
				TWA_CONTROL_CLEAR_PCI_ABORT);

#ifdef TW_OSL_PCI_CONFIG_ACCESSIBLE
			tw_osl_write_pci_config(ctlr->ctlr_handle,
				TW_CLI_PCI_CONFIG_STATUS_OFFSET,
				TWA_PCI_CONFIG_CLEAR_PCI_ABORT, 2);
#endif /* TW_OSL_PCI_CONFIG_ACCESSIBLE */

		}

		if (status_reg & TWA_STATUS_QUEUE_ERROR_INTERRUPT) {
			/* Skip queue error msgs during 9650SE/9690SA reset */
			if (((ctlr->device_id != TW_CL_DEVICE_ID_9K_E) &&
			     (ctlr->device_id != TW_CL_DEVICE_ID_9K_SA)) ||
			    (!(ctlr->reset_in_progress)))
				FUNC1(ctlr_handle, TW_CL_FALSE,
						   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
						   0x1305, 0x1, TW_CL_SEVERITY_ERROR_STRING,
						   "Controller queue error: clearing... ",
						   "status reg = 0x%x %s",
						   status_reg,
						   FUNC3(status_reg, desc));
			FUNC0(ctlr->ctlr_handle,
				TWA_CONTROL_CLEAR_QUEUE_ERROR);
		}
	}
	return(error);
}
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
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; } ;
typedef  int /*<<< orphan*/  TW_VOID ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 scalar_t__ TW_OSL_EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

TW_VOID
FUNC4(struct tw_cli_ctlr_context *ctlr)
{
	TW_INT32	error;

	FUNC1(6, ctlr->ctlr_handle, FUNC3(), "entered");

	if ((error = FUNC2(ctlr))) {
		/*
		 * If the driver is already in the process of retrieveing AEN's,
		 * we will be returned TW_OSL_EBUSY.  In this case,
		 * tw_cli_param_callback or tw_cli_aen_callback will eventually
		 * retrieve the AEN this attention interrupt is for.  So, we
		 * don't need to print the failure.
		 */ 
		if (error != TW_OSL_EBUSY)
			FUNC0(ctlr->ctlr_handle, TW_CL_FALSE,
				TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
				0x1200, 0x1, TW_CL_SEVERITY_ERROR_STRING,
				"Failed to fetch AEN",
				"error = %d", error);
	}
}
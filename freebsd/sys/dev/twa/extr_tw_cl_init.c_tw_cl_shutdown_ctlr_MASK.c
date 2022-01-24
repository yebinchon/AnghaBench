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
struct tw_cli_ctlr_context {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  gen_lock; int /*<<< orphan*/  active; } ;
struct tw_cl_ctlr_handle {scalar_t__ cl_ctlr_ctxt; } ;
typedef  int TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TWA_SHUTDOWN_MESSAGE_CREDITS ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 int /*<<< orphan*/  TW_CL_NULL ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int TW_CL_STOP_CTLR_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tw_cl_ctlr_handle*,int /*<<< orphan*/ ) ; 

TW_INT32
FUNC6(struct tw_cl_ctlr_handle *ctlr_handle, TW_UINT32 flags)
{
	struct tw_cli_ctlr_context	*ctlr =
		(struct tw_cli_ctlr_context *)(ctlr_handle->cl_ctlr_ctxt);
	TW_INT32			error;

	FUNC1(3, ctlr_handle, FUNC4(), "entered");
	/*
	 * Mark the controller as inactive, disable any further interrupts,
	 * and notify the controller that we are going down.
	 */
	ctlr->active = TW_CL_FALSE;

	FUNC2(ctlr);

	/* Let the controller know that we are going down. */
	if ((error = FUNC3(ctlr, TWA_SHUTDOWN_MESSAGE_CREDITS,
			0, 0, 0, 0, 0, TW_CL_NULL, TW_CL_NULL, TW_CL_NULL,
			TW_CL_NULL, TW_CL_NULL)))
		FUNC0(ctlr_handle, TW_CL_FALSE,
			TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
			0x1015, 0x1, TW_CL_SEVERITY_ERROR_STRING,
			"Can't close connection with controller",
			"error = %d", error);

	if (flags & TW_CL_STOP_CTLR_ONLY)
		goto ret;

	/* Destroy all locks used by CL. */
	FUNC5(ctlr_handle, ctlr->gen_lock);
	FUNC5(ctlr_handle, ctlr->io_lock);

ret:
	return(error);
}
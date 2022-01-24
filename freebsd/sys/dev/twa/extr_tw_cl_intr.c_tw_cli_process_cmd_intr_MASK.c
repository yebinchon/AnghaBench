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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tw_cli_ctlr_context*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

TW_VOID
FUNC3(struct tw_cli_ctlr_context *ctlr)
{
	FUNC0(6, ctlr->ctlr_handle, FUNC2(), "entered");

	/* Start any requests that might be in the pending queue. */
	FUNC1(ctlr);

	/*
	 * If tw_cli_submit_pending_queue was unsuccessful due to a "cmd queue
	 * full" condition, cmd_intr will already have been unmasked by
	 * tw_cli_submit_cmd.  We don't need to do it again... simply return.
	 */
}
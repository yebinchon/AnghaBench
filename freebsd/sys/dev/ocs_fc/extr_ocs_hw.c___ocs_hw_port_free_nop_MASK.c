#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ocs_sm_event_t ;
struct TYPE_8__ {TYPE_2__* app; } ;
typedef  TYPE_1__ ocs_sm_ctx_t ;
struct TYPE_9__ {TYPE_3__* hw; } ;
typedef  TYPE_2__ ocs_sli_port_t ;
struct TYPE_10__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_3__ ocs_hw_t ;

/* Variables and functions */
#define  OCS_EVT_ENTER 130 
#define  OCS_EVT_ERROR 129 
#define  OCS_EVT_RESPONSE 128 
 int /*<<< orphan*/  __ocs_hw_port_free_report_fail ; 
 int /*<<< orphan*/  __ocs_hw_port_freed ; 
 int /*<<< orphan*/  __ocs_hw_port_realloc_cb ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void *
FUNC4(ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *data)
{
	ocs_sli_port_t	*sport = ctx->app;
	ocs_hw_t	*hw = sport->hw;

	FUNC3("port");

	switch (evt) {
	case OCS_EVT_ENTER:
		/* Forward to execute in mailbox completion processing context */
		if (FUNC0(hw, __ocs_hw_port_realloc_cb, sport)) {
			FUNC1(hw->os, "ocs_hw_async_call failed\n");
		}
		break;
	case OCS_EVT_RESPONSE:
		FUNC2(ctx, __ocs_hw_port_freed, data);
		break;
	case OCS_EVT_ERROR:
		FUNC2(ctx, __ocs_hw_port_free_report_fail, data);
		break;
	default:
		break;
	}

	return NULL;
}
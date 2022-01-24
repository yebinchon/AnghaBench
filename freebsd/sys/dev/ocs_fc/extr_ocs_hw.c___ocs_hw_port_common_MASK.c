#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ocs_sm_event_t ;
struct TYPE_5__ {TYPE_2__* app; } ;
typedef  TYPE_1__ ocs_sm_ctx_t ;
struct TYPE_6__ {TYPE_3__* hw; } ;
typedef  TYPE_2__ ocs_sli_port_t ;
struct TYPE_7__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
#define  OCS_EVT_EXIT 130 
#define  OCS_EVT_HW_PORT_REQ_ATTACH 129 
#define  OCS_EVT_HW_PORT_REQ_FREE 128 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int32_t
FUNC4(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *data)
{
	ocs_sli_port_t	*sport = ctx->app;
	ocs_hw_t	*hw = sport->hw;

	FUNC3("port");

	switch (evt) {
	case OCS_EVT_EXIT:
		/* ignore */
		break;

	case OCS_EVT_HW_PORT_REQ_FREE:
	case OCS_EVT_HW_PORT_REQ_ATTACH:
		if (data != NULL) {
			FUNC0(hw->os, data, SLI4_BMBX_SIZE);
		}
		/* fall through */
	default:
		FUNC1(hw->os, "%s %-20s not handled\n", funcname, FUNC2(evt));
		break;
	}

	return 0;
}
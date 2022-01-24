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
struct TYPE_5__ {TYPE_3__* app; } ;
typedef  TYPE_1__ ocs_sm_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_2__ ocs_hw_t ;
struct TYPE_7__ {TYPE_2__* hw; } ;
typedef  TYPE_3__ ocs_domain_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
#define  OCS_EVT_EXIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int32_t
FUNC3(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *data)
{
	ocs_domain_t	*domain = ctx->app;
	ocs_hw_t	*hw = domain->hw;

	FUNC2("domain");

	switch (evt) {
	case OCS_EVT_EXIT:
		/* ignore */
		break;

	default:
		FUNC0(hw->os, "%s %-20s not handled\n", funcname, FUNC1(evt));
		break;
	}

	return 0;
}
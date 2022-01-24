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
typedef  int /*<<< orphan*/  ocs_sm_ctx_t ;
struct TYPE_7__ {int /*<<< orphan*/  display_name; } ;
struct TYPE_6__ {TYPE_1__* node; } ;
struct TYPE_5__ {int /*<<< orphan*/  ocs; } ;

/* Variables and functions */
#define  OCS_EVT_ENTER 131 
#define  OCS_EVT_EXIT 130 
#define  OCS_EVT_REENTER 129 
#define  OCS_EVT_SRRS_ELS_REQ_FAIL 128 
 TYPE_2__* els ; 
 TYPE_3__* node ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int const,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void *
FUNC4(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *arg)
{
	FUNC3();

	switch(evt) {
	case OCS_EVT_ENTER:
	case OCS_EVT_REENTER:
	case OCS_EVT_EXIT:
		break;

	/* If ELS_REQ_FAIL is not handled in state, then we'll terminate this ELS and
	 * pass the event to the node
	 */
	case OCS_EVT_SRRS_ELS_REQ_FAIL:
		FUNC1(els->node->ocs, "[%s] %-20s %-20s not handled - terminating ELS\n", node->display_name, funcname,
			FUNC2(evt));
		FUNC0(els, OCS_EVT_SRRS_ELS_REQ_FAIL, arg);
		break;
	default:
		FUNC1(els->node->ocs, "[%s] %-20s %-20s not handled\n", node->display_name, funcname,
			FUNC2(evt));
		break;
	}
	return NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ocs_sm_function_t ;
struct TYPE_7__ {scalar_t__ current_state; } ;
typedef  TYPE_1__ ocs_sm_ctx_t ;
struct TYPE_8__ {TYPE_1__ sm; } ;
typedef  TYPE_2__ ocs_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_ENTER ; 
 int /*<<< orphan*/  OCS_EVT_EXIT ; 
 int /*<<< orphan*/  OCS_EVT_REENTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(ocs_node_t *node, ocs_sm_function_t state, void *data)
{
	ocs_sm_ctx_t *ctx = &node->sm;

	FUNC0(node);
		if (ctx->current_state == state) {
			FUNC1(node, OCS_EVT_REENTER, data);
		} else {
			FUNC1(node, OCS_EVT_EXIT, data);
			ctx->current_state = state;
			FUNC1(node, OCS_EVT_ENTER, data);
		}
	FUNC2(node);
}
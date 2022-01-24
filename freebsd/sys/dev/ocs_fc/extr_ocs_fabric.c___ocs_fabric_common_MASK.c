#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ocs_sm_event_t ;
struct TYPE_7__ {int /*<<< orphan*/  shutdown_reason; struct TYPE_7__* app; } ;
typedef  TYPE_1__ ocs_sm_ctx_t ;
typedef  TYPE_1__ ocs_node_t ;

/* Variables and functions */
#define  OCS_EVT_DOMAIN_ATTACH_OK 129 
#define  OCS_EVT_SHUTDOWN 128 
 int /*<<< orphan*/  OCS_NODE_SHUTDOWN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_1__*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void *
FUNC3(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *arg)
{
	ocs_node_t *node = NULL;
	FUNC1(ctx, NULL);
	FUNC1(ctx->app, NULL);
	node = ctx->app;

	switch(evt) {
	case OCS_EVT_DOMAIN_ATTACH_OK:
		break;
	case OCS_EVT_SHUTDOWN:
		node->shutdown_reason = OCS_NODE_SHUTDOWN_DEFAULT;
		FUNC2(node);
		break;

	default:
		/* call default event handler common to all nodes */
		FUNC0(funcname, ctx, evt, arg);
		break;
	}
	return NULL;
}
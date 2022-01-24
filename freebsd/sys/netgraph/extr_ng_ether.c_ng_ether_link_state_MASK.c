#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ng_mesg {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_3__ {int /*<<< orphan*/ * orphan; int /*<<< orphan*/ * lower; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int LINK_STATE_DOWN ; 
 int LINK_STATE_UP ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NGM_FLOW_COOKIE ; 
 int NGM_LINK_IS_DOWN ; 
 int NGM_LINK_IS_UP ; 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/  const,struct ng_mesg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, int state)
{
	const node_p node = FUNC0(ifp);
	const priv_p priv = FUNC2(node);
	struct ng_mesg *msg;
	int cmd, dummy_error = 0;

	if (state == LINK_STATE_UP)
		cmd = NGM_LINK_IS_UP;
	else if (state == LINK_STATE_DOWN)
		cmd = NGM_LINK_IS_DOWN;
	else
		return;

	if (priv->lower != NULL) {
		FUNC1(msg, NGM_FLOW_COOKIE, cmd, 0, M_NOWAIT);
		if (msg != NULL)
			FUNC3(dummy_error, node, msg, priv->lower, 0);
	}
	if (priv->orphan != NULL) {
		FUNC1(msg, NGM_FLOW_COOKIE, cmd, 0, M_NOWAIT);
		if (msg != NULL)
			FUNC3(dummy_error, node, msg, priv->orphan, 0);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct l2tp_seq {int /*<<< orphan*/  mtx; int /*<<< orphan*/  xack_timer; int /*<<< orphan*/  rack_timer; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_5__ {struct l2tp_seq seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2tp_seq* const) ; 
 int /*<<< orphan*/  M_NETGRAPH_L2TP ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(node_p node)
{
	const priv_p priv = FUNC1(node);
	struct l2tp_seq *const seq = &priv->seq;

	/* Sanity check */
	FUNC0(seq);

	/* Reset sequence number state */
	FUNC5(priv);

	/* Free private data if neither timer is running */
	FUNC6(&seq->rack_timer, node);
	FUNC6(&seq->xack_timer, node);

	FUNC4(&seq->mtx);

	FUNC3(priv, M_NETGRAPH_L2TP);

	/* Unref node */
	FUNC2(node);
	return (0);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_7__ {int /*<<< orphan*/  q_mtx; int /*<<< orphan*/  q_callout; } ;
struct TYPE_6__ {int /*<<< orphan*/  q_mtx; int /*<<< orphan*/  q_callout; } ;
struct TYPE_8__ {int /*<<< orphan*/  node; TYPE_2__ lower; TYPE_1__ upper; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(node_p node)
{
	const priv_p priv = FUNC0(node);

	FUNC4(&priv->upper.q_callout, node);
	FUNC4(&priv->lower.q_callout, node);
	FUNC3(&priv->upper.q_mtx);
	FUNC3(&priv->lower.q_mtx);
	FUNC1(priv->node);
	FUNC2(priv, M_NETGRAPH);
	return (0);
}
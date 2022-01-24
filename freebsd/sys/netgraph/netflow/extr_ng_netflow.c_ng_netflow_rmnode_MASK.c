#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_4__ {struct TYPE_4__* const fib_data; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(node_p node)
{
	const priv_p priv = FUNC0(node);

	FUNC1(node, NULL);
	FUNC2(priv->node);

	FUNC3(priv->fib_data, M_NETGRAPH);
	FUNC3(priv, M_NETGRAPH);

	return (0);
}
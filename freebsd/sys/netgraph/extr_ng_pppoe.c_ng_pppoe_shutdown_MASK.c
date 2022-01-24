#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_6__ {int /*<<< orphan*/  node; TYPE_1__* sesshash; } ;
struct TYPE_5__ {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_PPPOE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SESSHASHSIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(node_p node)
{
	const priv_p privp = FUNC0(node);
	int	i;

	for (i = 0; i < SESSHASHSIZE; i++)
	    FUNC4(&privp->sesshash[i].mtx);
	FUNC1(node, NULL);
	FUNC2(privp->node);
	FUNC3(privp, M_NETGRAPH_PPPOE);
	return (0);
}
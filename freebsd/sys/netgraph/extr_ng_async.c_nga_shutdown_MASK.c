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
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_5__ {struct TYPE_5__* const sbuf; struct TYPE_5__* const abuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_ASYNC ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(node_p node)
{
	const sc_p sc = FUNC0(node);

	FUNC4(sc->abuf, M_NETGRAPH_ASYNC);
	FUNC4(sc->sbuf, M_NETGRAPH_ASYNC);
	FUNC3(sc, sizeof(*sc));
	FUNC4(sc, M_NETGRAPH_ASYNC);
	FUNC1(node, NULL);
	FUNC2(node);
	return (0);
}
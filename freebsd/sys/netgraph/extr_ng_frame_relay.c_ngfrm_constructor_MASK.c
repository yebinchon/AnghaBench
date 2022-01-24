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
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_4__ {int addrlen; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(node_p node)
{
	sc_p sc;

	sc = FUNC1(sizeof(*sc), M_NETGRAPH, M_WAITOK | M_ZERO);
	sc->addrlen = 2;	/* default */

	/* Link the node and our private info */
	FUNC0(node, sc);
	sc->node = node;
	return (0);
}
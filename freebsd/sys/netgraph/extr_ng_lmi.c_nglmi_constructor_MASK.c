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
struct TYPE_4__ {int /*<<< orphan*/  liv_rate; int /*<<< orphan*/  liv_per_full; int /*<<< orphan*/  protoname; int /*<<< orphan*/  handle; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NAME_NONE ; 
 int /*<<< orphan*/  NG_LMI_KEEPALIVE_RATE ; 
 int /*<<< orphan*/  NG_LMI_SEQ_PER_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(node_p node)
{
	sc_p sc;

	sc = FUNC1(sizeof(*sc), M_NETGRAPH, M_WAITOK | M_ZERO);

	FUNC0(node, sc);
	sc->node = node;

	FUNC2(&sc->handle);
	sc->protoname = NAME_NONE;
	sc->liv_per_full = NG_LMI_SEQ_PER_FULL;	/* make this dynamic */
	sc->liv_rate = NG_LMI_KEEPALIVE_RATE;
	return (0);
}
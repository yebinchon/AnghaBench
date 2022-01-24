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
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_1__* ng_l2cap_p ;
struct TYPE_4__ {int discon_timo; int /*<<< orphan*/  chan_list; int /*<<< orphan*/  con_list; int /*<<< orphan*/  debug; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_NETGRAPH_L2CAP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NG_L2CAP_WARN_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(node_p node)
{
	ng_l2cap_p	l2cap = NULL;

	/* Create new L2CAP node */
	l2cap = FUNC3(sizeof(*l2cap), M_NETGRAPH_L2CAP, M_WAITOK | M_ZERO);

	l2cap->node = node;
	l2cap->debug = NG_L2CAP_WARN_LEVEL;
	l2cap->discon_timo = 5; /* sec */

	FUNC0(&l2cap->con_list);
	FUNC0(&l2cap->chan_list);

	FUNC2(node, l2cap);
	FUNC1(node);

	return (0);
}
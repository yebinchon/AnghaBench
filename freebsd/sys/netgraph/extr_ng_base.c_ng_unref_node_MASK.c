#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* node_p ;
struct TYPE_9__ {int /*<<< orphan*/  q_mtx; } ;
struct TYPE_11__ {TYPE_1__ nd_input_queue; TYPE_2__* nd_type; int /*<<< orphan*/  nd_refs; int /*<<< orphan*/  nd_vnet; } ;
struct TYPE_10__ {int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  V_ng_named_nodes ; 
 int /*<<< orphan*/  V_ng_nodes ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nd_idnodes ; 
 int /*<<< orphan*/  nd_nodes ; 
 TYPE_3__ ng_deadnode ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(node_p node)
{

	if (node == &ng_deadnode)
		return;

	FUNC1(node->nd_vnet);

	if (FUNC10(&node->nd_refs)) { /* we were the last */

		node->nd_type->refs--; /* XXX maybe should get types lock? */
		FUNC5();
		if (FUNC8(node)) {
			V_ng_named_nodes--;
			FUNC4(node, nd_nodes);
		}
		FUNC6();

		FUNC2();
		V_ng_nodes--;
		FUNC4(node, nd_idnodes);
		FUNC3();

		FUNC9(&node->nd_input_queue.q_mtx);
		FUNC7(node);
	}
	FUNC0();
}
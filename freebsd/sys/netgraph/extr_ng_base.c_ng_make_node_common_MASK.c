#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ng_type {int /*<<< orphan*/  refs; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* node_p ;
struct TYPE_9__ {scalar_t__ q_flags; int /*<<< orphan*/  queue; } ;
struct TYPE_8__ {scalar_t__ nd_ID; int /*<<< orphan*/  nd_hooks; TYPE_3__ nd_input_queue; int /*<<< orphan*/  nd_vnet; struct ng_type* nd_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__*) ; 
 size_t FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  V_nextID ; 
 int /*<<< orphan*/ * V_ng_ID_hash ; 
 int V_ng_ID_hmask ; 
 int V_ng_nodes ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  nd_idnodes ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(struct ng_type *type, node_p *nodepp)
{
	node_p node;

	/* Require the node type to have been already installed */
	if (FUNC12(type->name) == NULL) {
		FUNC10();
		return (EINVAL);
	}

	/* Make a node and try attach it to the type */
	FUNC4(node);
	if (node == NULL) {
		FUNC10();
		return (ENOMEM);
	}
	node->nd_type = type;
#ifdef VIMAGE
	node->nd_vnet = curvnet;
#endif
	FUNC7(node);				/* note reference */
	type->refs++;

	FUNC8(&node->nd_input_queue);
	FUNC9(&node->nd_input_queue.queue);
	node->nd_input_queue.q_flags = 0;

	/* Initialize hook list for new node */
	FUNC2(&node->nd_hooks);

	/* Get an ID and put us in the hash chain. */
	FUNC0();
	for (;;) { /* wrap protection, even if silly */
		node_p node2 = NULL;
		node->nd_ID = V_nextID++; /* 137/sec for 1 year before wrap */

		/* Is there a problem with the new number? */
		FUNC5(node->nd_ID, node2); /* already taken? */
		if ((node->nd_ID != 0) && (node2 == NULL)) {
			break;
		}
	}
	V_ng_nodes++;
	if (V_ng_nodes * 2 > V_ng_ID_hmask)
		FUNC11();
	FUNC3(&V_ng_ID_hash[FUNC6(node->nd_ID)], node,
	    nd_idnodes);
	FUNC1();

	/* Done */
	*nodepp = node;
	return (0);
}
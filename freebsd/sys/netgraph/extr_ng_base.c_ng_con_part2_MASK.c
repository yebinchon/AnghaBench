#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  TYPE_3__* hook_p ;
struct TYPE_20__ {int /*<<< orphan*/  hk_flags; TYPE_2__* hk_node; struct TYPE_20__* hk_peer; int /*<<< orphan*/  hk_name; } ;
struct TYPE_19__ {TYPE_1__* nd_type; int /*<<< orphan*/  nd_numhooks; int /*<<< orphan*/  nd_hooks; } ;
struct TYPE_18__ {int (* newhook ) (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ;int (* connect ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  NG_REUSE_ITEM ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  hk_hooks ; 
 int /*<<< orphan*/  ng_con_part3 ; 
 TYPE_3__ ng_deadhook ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC15(node_p node, item_p item, hook_p hook)
{
	hook_p	peer;
	int	error = 0;

	/*
	 * When we run, we know that the node 'node' is locked for us.
	 * Our caller has a reference on the hook.
	 * Our caller has a reference on the node.
	 * (In this case our caller is ng_apply_item() ).
	 * The peer hook has a reference on the hook.
	 * our node pointer points to the 'dead' node.
	 * First check the hook name is unique.
	 * Should not happen because we checked before queueing this.
	 */
	if (FUNC10(node, FUNC3(hook)) != NULL) {
		FUNC8();
		FUNC9(hook); /* should destroy peer too */
		FUNC12("failed in ng_con_part2()\n");
		FUNC0(EEXIST);
	}
	/*
	 * Check if the node type code has something to say about it
	 * If it fails, the unref of the hook will also unref the attached node,
	 * however since that node is 'ng_deadnode' this will do nothing.
	 * The peer hook will also be destroyed.
	 */
	if (node->nd_type->newhook != NULL) {
		if ((error = (*node->nd_type->newhook)(node, hook,
		    hook->hk_name))) {
			FUNC9(hook); /* should destroy peer too */
			FUNC12("failed in ng_con_part2()\n");
			FUNC0(error);
		}
	}

	/*
	 * The 'type' agrees so far, so go ahead and link it in.
	 * We'll ask again later when we actually connect the hooks.
	 */
	hook->hk_node = node;		/* just overwrite ng_deadnode */
	FUNC5(node);		/* each hook counts as a reference */
	FUNC1(&node->nd_hooks, hook, hk_hooks);
	node->nd_numhooks++;
	FUNC4(hook);	/* one for the node */
	
	/*
	 * We now have a symmetrical situation, where both hooks have been
	 * linked to their nodes, the newhook methods have been called
	 * And the references are all correct. The hooks are still marked
	 * as invalid, as we have not called the 'connect' methods
	 * yet.
	 * We can call the local one immediately as we have the
	 * node locked, but we need to queue the remote one.
	 */
	if (hook->hk_node->nd_type->connect) {
		if ((error = (*hook->hk_node->nd_type->connect) (hook))) {
			FUNC9(hook);	/* also zaps peer */
			FUNC12("failed in ng_con_part2(A)\n");
			FUNC0(error);
		}
	}

	/*
	 * Acquire topo mutex to avoid race with ng_destroy_hook().
	 */
	FUNC6();
	peer = hook->hk_peer;
	if (peer == &ng_deadhook) {
		FUNC7();
		FUNC12("failed in ng_con_part2(B)\n");
		FUNC9(hook);
		FUNC0(ENOENT);
	}
	FUNC7();

	if ((error = FUNC11(peer->hk_node, peer, item, &ng_con_part3,
	    NULL, 0, NG_REUSE_ITEM))) {
		FUNC12("failed in ng_con_part2(C)\n");
		FUNC9(hook);	/* also zaps peer */
		return (error);		/* item was consumed. */
	}
	hook->hk_flags &= ~HK_INVALID; /* need both to be able to work */
	return (0);			/* item was consumed. */
done:
	FUNC2(item);
	return (error);
}
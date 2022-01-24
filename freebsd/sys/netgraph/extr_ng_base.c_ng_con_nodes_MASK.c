#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  TYPE_1__* hook_p ;
struct TYPE_9__ {int hk_refs; int /*<<< orphan*/ * hk_node; struct TYPE_9__* hk_peer; int /*<<< orphan*/  hk_flags; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NG_HOOKSIZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  NG_NOFLAGS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,TYPE_1__**) ; 
 int /*<<< orphan*/  ng_con_part2 ; 
 int /*<<< orphan*/  ng_deadnode ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(item_p item, node_p node, const char *name,
    node_p node2, const char *name2)
{
	int	error;
	hook_p	hook;
	hook_p	hook2;

	if (FUNC7(node2, name2) != NULL) {
		return(EEXIST);
	}
	if ((error = FUNC5(node, name, &hook)))  /* gives us a ref */
		return (error);
	/* Allocate the other hook and link it up */
	FUNC0(hook2);
	if (hook2 == NULL) {
		FUNC4();
		FUNC6(hook);	/* XXX check ref counts so far */
		FUNC3(hook);	/* including our ref */
		return (ENOMEM);
	}
	hook2->hk_refs = 1;		/* start with a reference for us. */
	hook2->hk_flags = HK_INVALID;
	hook2->hk_peer = hook;		/* Link the two together */
	hook->hk_peer = hook2;	
	FUNC2(hook);		/* Add a ref for the peer to each*/
	FUNC2(hook2);
	hook2->hk_node = &ng_deadnode;
	FUNC10(FUNC1(hook2), name2, NG_HOOKSIZ);

	/*
	 * Queue the function above.
	 * Procesing continues in that function in the lock context of
	 * the other node.
	 */
	if ((error = FUNC8(node2, hook2, item, &ng_con_part2, NULL, 0,
	    NG_NOFLAGS))) {
		FUNC9("failed in ng_con_nodes(): %d\n", error);
		FUNC6(hook);	/* also zaps peer */
	}

	FUNC3(hook);		/* Let each hook go if it wants to */
	FUNC3(hook2);
	return (error);
}
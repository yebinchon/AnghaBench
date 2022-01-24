#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  ng_ID_t ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  ITEM_DEBUG_CHECKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(node_p here, item_p item, hook_p hook, ng_ID_t retaddr)
{
	hook_p peer;
	node_p peernode;
	ITEM_DEBUG_CHECKS;
	/*
	 * Quick sanity check..
	 * Since a hook holds a reference on its node, once we know
	 * that the peer is still connected (even if invalid,) we know
	 * that the peer node is present, though maybe invalid.
	 */
	FUNC10();
	if ((hook == NULL) || FUNC3(hook) ||
	    FUNC3(peer = FUNC4(hook)) ||
	    FUNC6(peernode = FUNC8(hook))) {
		FUNC2(item);
		FUNC12();
		FUNC11();
		return (ENETDOWN);
	}

	/*
	 * Transfer our interest to the other (peer) end.
	 */
	FUNC5(peer);
	FUNC7(peernode);
	FUNC0(item, peer);
	FUNC1(item, peernode);
	FUNC9(item, here, retaddr);

	FUNC11();

	return (0);
}
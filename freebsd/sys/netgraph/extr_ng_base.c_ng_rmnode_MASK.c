#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* node_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_13__ {int nd_flags; TYPE_1__* nd_type; int /*<<< orphan*/  nd_hooks; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* shutdown ) (TYPE_2__*) ;int /*<<< orphan*/  (* close ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int NGF_CLOSING ; 
 int NGF_INVALID ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__ ng_deadnode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

void
FUNC10(node_p node, hook_p dummy1, void *dummy2, int dummy3)
{
	hook_p hook;

	/* Check if it's already shutting down */
	if ((node->nd_flags & NGF_CLOSING) != 0)
		return;

	if (node == &ng_deadnode) {
		FUNC7 ("shutdown called on deadnode\n");
		return;
	}

	/* Add an extra reference so it doesn't go away during this */
	FUNC2(node);

	/*
	 * Mark it invalid so any newcomers know not to try use it
	 * Also add our own mark so we can't recurse
	 * note that NGF_INVALID does not do this as it's also set during
	 * creation
	 */
	node->nd_flags |= NGF_INVALID|NGF_CLOSING;

	/* If node has its pre-shutdown method, then call it first*/
	if (node->nd_type && node->nd_type->close)
		(*node->nd_type->close)(node);

	/* Notify all remaining connected nodes to disconnect */
	while ((hook = FUNC0(&node->nd_hooks)) != NULL)
		FUNC4(hook);

	/*
	 * Drain the input queue forceably.
	 * it has no hooks so what's it going to do, bleed on someone?
	 * Theoretically we came here from a queue entry that was added
	 * Just before the queue was closed, so it should be empty anyway.
	 * Also removes us from worklist if needed.
	 */
	FUNC5(node);

	/* Ask the type if it has anything to do in this case */
	if (node->nd_type && node->nd_type->shutdown) {
		(*node->nd_type->shutdown)(node);
		if (FUNC1(node)) {
			/*
			 * Well, blow me down if the node code hasn't declared
			 * that it doesn't want to die.
			 * Presumably it is a persistent node.
			 * If we REALLY want it to go away,
			 *  e.g. hardware going away,
			 * Our caller should set NGF_REALLY_DIE in nd_flags.
			 */
			node->nd_flags &= ~(NGF_INVALID|NGF_CLOSING);
			FUNC3(node); /* Assume they still have theirs */
			return;
		}
	} else {				/* do the default thing */
		FUNC3(node);
	}

	FUNC6(node); /* basically a NOP these days */

	/*
	 * Remove extra reference, possibly the last
	 * Possible other holders of references may include
	 * timeout callouts, but theoretically the node's supposed to
	 * have cancelled them. Possibly hardware dependencies may
	 * force a driver to 'linger' with a reference.
	 */
	FUNC3(node);
}
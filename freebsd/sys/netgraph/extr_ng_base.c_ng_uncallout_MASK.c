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
struct callout {int /*<<< orphan*/ * c_arg; int /*<<< orphan*/ * c_func; } ;
typedef  int /*<<< orphan*/ * node_p ;
typedef  int /*<<< orphan*/ * item_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct callout*) ; 
 int /*<<< orphan*/  ng_callout_trampoline ; 

int
FUNC4(struct callout *c, node_p node)
{
	item_p item;
	int rval;

	FUNC0(c != NULL, ("ng_uncallout: NULL callout"));
	FUNC0(node != NULL, ("ng_uncallout: NULL node"));

	rval = FUNC3(c);
	item = c->c_arg;
	/* Do an extra check */
	if ((rval > 0) && (c->c_func == &ng_callout_trampoline) &&
	    (item != NULL) && (FUNC1(item) == node)) {
		/*
		 * We successfully removed it from the queue before it ran
		 * So now we need to unreference everything that was
		 * given extra references. (NG_FREE_ITEM does this).
		 */
		FUNC2(item);
	}
	c->c_arg = NULL;

	/*
	 * Callers only want to know if the callout was cancelled and
	 * not draining or stopped.
	 */
	return (rval > 0);
}
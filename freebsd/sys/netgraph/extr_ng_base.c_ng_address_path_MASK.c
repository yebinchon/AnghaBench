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
typedef  int /*<<< orphan*/ * node_p ;
typedef  int /*<<< orphan*/  ng_ID_t ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_DEBUG_CHECKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

int
FUNC5(node_p here, item_p item, const char *address, ng_ID_t retaddr)
{
	node_p	dest = NULL;
	hook_p	hook = NULL;
	int	error;

	ITEM_DEBUG_CHECKS;
	/*
	 * Note that ng_path2noderef increments the reference count
	 * on the node for us if it finds one. So we don't have to.
	 */
	error = FUNC4(here, address, &dest, &hook);
	if (error) {
		FUNC2(item);
		return (error);
	}
	FUNC1(item, dest);
	if (hook)
		FUNC0(item, hook);

	FUNC3(item, here, retaddr);
	return (0);
}
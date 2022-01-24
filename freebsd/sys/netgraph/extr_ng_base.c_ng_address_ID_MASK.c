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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ITEM_DEBUG_CHECKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(node_p here, item_p item, ng_ID_t ID, ng_ID_t retaddr)
{
	node_p dest;

	ITEM_DEBUG_CHECKS;
	/*
	 * Find the target node.
	 */
	dest = FUNC5(ID); /* GETS REFERENCE! */
	if (dest == NULL) {
		FUNC2(item);
		FUNC4();
		return(EINVAL);
	}
	/* Fill out the contents */
	FUNC1(item, dest);
	FUNC0(item);
	FUNC3(item, here, retaddr);
	return (0);
}
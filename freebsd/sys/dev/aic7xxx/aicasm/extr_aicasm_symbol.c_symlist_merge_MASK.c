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
typedef  int /*<<< orphan*/  symlist_t ;
typedef  int /*<<< orphan*/  symbol_node_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 

void
FUNC4(symlist_t *symlist_dest, symlist_t *symlist_src1,
	      symlist_t *symlist_src2)
{
	symbol_node_t *node;

	*symlist_dest = *symlist_src1;
	while((node = FUNC0(symlist_src2)) != NULL) {
		FUNC3(symlist_src2, links);
		FUNC2(symlist_dest, node, links);
	}

	/* These are now empty */
	FUNC1(symlist_src1);
	FUNC1(symlist_src2);
}
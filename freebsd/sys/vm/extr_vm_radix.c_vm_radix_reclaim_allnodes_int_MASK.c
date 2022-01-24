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
struct vm_radix_node {scalar_t__ rn_count; struct vm_radix_node** rn_child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ VM_RADIX_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct vm_radix_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_radix_node*) ; 

__attribute__((used)) static void
FUNC3(struct vm_radix_node *rnode)
{
	int slot;

	FUNC0(rnode->rn_count <= VM_RADIX_COUNT,
	    ("vm_radix_reclaim_allnodes_int: bad count in rnode %p", rnode));
	for (slot = 0; rnode->rn_count != 0; slot++) {
		if (rnode->rn_child[slot] == NULL)
			continue;
		if (!FUNC1(rnode->rn_child[slot]))
			FUNC3(rnode->rn_child[slot]);
		rnode->rn_child[slot] = NULL;
		rnode->rn_count--;
	}
	FUNC2(rnode);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
struct vm_radix_node {struct vm_radix_node** rn_child; int /*<<< orphan*/  rn_clev; } ;
struct vm_radix {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 struct vm_radix_node* FUNC0 (struct vm_radix*) ; 
 scalar_t__ FUNC1 (struct vm_radix_node*) ; 
 scalar_t__ FUNC2 (struct vm_radix_node*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct vm_radix_node*) ; 

vm_page_t
FUNC5(struct vm_radix *rtree, vm_pindex_t index)
{
	struct vm_radix_node *rnode;
	vm_page_t m;
	int slot;

	rnode = FUNC0(rtree);
	while (rnode != NULL) {
		if (FUNC1(rnode)) {
			m = FUNC4(rnode);
			if (m->pindex == index)
				return (m);
			else
				break;
		} else if (FUNC2(rnode, index))
			break;
		slot = FUNC3(index, rnode->rn_clev);
		rnode = rnode->rn_child[slot];
	}
	return (NULL);
}
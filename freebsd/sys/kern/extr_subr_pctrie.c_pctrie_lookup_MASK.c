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
typedef  int /*<<< orphan*/  uint64_t ;
struct pctrie_node {struct pctrie_node** pn_child; int /*<<< orphan*/  pn_clev; } ;
struct pctrie {int dummy; } ;

/* Variables and functions */
 struct pctrie_node* FUNC0 (struct pctrie*) ; 
 scalar_t__ FUNC1 (struct pctrie_node*) ; 
 scalar_t__ FUNC2 (struct pctrie_node*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct pctrie_node*) ; 

uint64_t *
FUNC5(struct pctrie *ptree, uint64_t index)
{
	struct pctrie_node *node;
	uint64_t *m;
	int slot;

	node = FUNC0(ptree);
	while (node != NULL) {
		if (FUNC1(node)) {
			m = FUNC4(node);
			if (*m == index)
				return (m);
			else
				break;
		} else if (FUNC2(node, index))
			break;
		slot = FUNC3(index, node->pn_clev);
		node = node->pn_child[slot];
	}
	return (NULL);
}
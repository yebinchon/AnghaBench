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
struct pctrie_node {scalar_t__ pn_count; struct pctrie_node** pn_child; } ;
struct pctrie {int dummy; } ;
typedef  int /*<<< orphan*/  pctrie_free_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PCTRIE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct pctrie_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct pctrie*,struct pctrie_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct pctrie *ptree, struct pctrie_node *node,
    pctrie_free_t freefn)
{
	int slot;

	FUNC0(node->pn_count <= PCTRIE_COUNT,
	    ("pctrie_reclaim_allnodes_int: bad count in node %p", node));
	for (slot = 0; node->pn_count != 0; slot++) {
		if (node->pn_child[slot] == NULL)
			continue;
		if (!FUNC1(node->pn_child[slot]))
			FUNC3(ptree,
			    node->pn_child[slot], freefn);
		node->pn_child[slot] = NULL;
		node->pn_count--;
	}
	FUNC2(ptree, node, freefn);
}
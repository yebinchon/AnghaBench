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
struct pctrie_node {int dummy; } ;
struct pctrie {int dummy; } ;
typedef  int /*<<< orphan*/  pctrie_free_t ;

/* Variables and functions */
 struct pctrie_node* FUNC0 (struct pctrie*) ; 
 int /*<<< orphan*/  FUNC1 (struct pctrie_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct pctrie*,struct pctrie_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pctrie*,int /*<<< orphan*/ *) ; 

void
FUNC4(struct pctrie *ptree, pctrie_free_t freefn)
{
	struct pctrie_node *root;

	root = FUNC0(ptree);
	if (root == NULL)
		return;
	FUNC3(ptree, NULL);
	if (!FUNC1(root))
		FUNC2(ptree, root, freefn);
}
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
struct autofs_node {int /*<<< orphan*/  an_name; int /*<<< orphan*/  an_vnode_lock; int /*<<< orphan*/  an_children; struct autofs_node* an_parent; int /*<<< orphan*/  an_callout; int /*<<< orphan*/  an_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_AUTOFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct autofs_node*) ; 
 int /*<<< orphan*/  autofs_node_tree ; 
 int /*<<< orphan*/  autofs_node_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct autofs_node*) ; 

void
FUNC8(struct autofs_node *anp)
{
	struct autofs_node *parent;

	FUNC0(anp->an_mount);
	FUNC1(FUNC2(&anp->an_children), ("have children"));

	FUNC4(&anp->an_callout);

	parent = anp->an_parent;
	if (parent != NULL)
		FUNC3(autofs_node_tree, &parent->an_children, anp);
	FUNC6(&anp->an_vnode_lock);
	FUNC5(anp->an_name, M_AUTOFS);
	FUNC7(autofs_node_zone, anp);
}
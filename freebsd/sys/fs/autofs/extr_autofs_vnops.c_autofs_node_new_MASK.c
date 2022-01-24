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
struct autofs_node {int /*<<< orphan*/  an_children; struct autofs_mount* an_mount; struct autofs_node* an_parent; int /*<<< orphan*/  an_ctime; int /*<<< orphan*/  an_vnode_lock; int /*<<< orphan*/  an_callout; int /*<<< orphan*/  an_fileno; int /*<<< orphan*/  an_name; } ;
struct autofs_mount {int /*<<< orphan*/  am_last_fileno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autofs_mount*) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_AUTOFS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct autofs_node*) ; 
 int /*<<< orphan*/  SX_NOWITNESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct autofs_node*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  autofs_node_tree ; 
 int /*<<< orphan*/  autofs_node_zone ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct autofs_node* FUNC11 (int /*<<< orphan*/ ,int) ; 

int
FUNC12(struct autofs_node *parent, struct autofs_mount *amp,
    const char *name, int namelen, struct autofs_node **anpp)
{
	struct autofs_node *anp;

	if (parent != NULL) {
		FUNC0(parent->an_mount);

		FUNC1(FUNC5(parent, name, namelen, NULL) == ENOENT,
		    ("node \"%s\" already exists", name));
	}

	anp = FUNC11(autofs_node_zone, M_WAITOK | M_ZERO);
	if (namelen >= 0)
		anp->an_name = FUNC9(name, namelen, M_AUTOFS);
	else
		anp->an_name = FUNC8(name, M_AUTOFS);
	anp->an_fileno = FUNC4(&amp->am_last_fileno, 1);
	FUNC6(&anp->an_callout, 1);
	/*
	 * The reason for SX_NOWITNESS here is that witness(4)
	 * cannot tell vnodes apart, so the following perfectly
	 * valid lock order...
	 *
	 * vnode lock A -> autofsvlk B -> vnode lock B
	 *
	 * ... gets reported as a LOR.
	 */
	FUNC10(&anp->an_vnode_lock, "autofsvlk", SX_NOWITNESS);
	FUNC7(&anp->an_ctime);
	anp->an_parent = parent;
	anp->an_mount = amp;
	if (parent != NULL)
		FUNC3(autofs_node_tree, &parent->an_children, anp);
	FUNC2(&anp->an_children);

	*anpp = anp;
	return (0);
}
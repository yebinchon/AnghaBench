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
struct vop_link_args {struct componentname* a_cnp; struct vnode* a_vp; struct vnode* a_tdvp; } ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct tmpfs_node {scalar_t__ tn_links; int tn_flags; int /*<<< orphan*/  tn_status; } ;
struct tmpfs_dirent {int dummy; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int APPEND ; 
 int EMLINK ; 
 int EPERM ; 
 int HASBUF ; 
 int IMMUTABLE ; 
 int ISWHITEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TMPFS_LINK_MAX ; 
 int /*<<< orphan*/  TMPFS_NODE_CHANGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vnode*) ; 
 struct tmpfs_node* FUNC3 (struct vnode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct tmpfs_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmpfs_dirent**) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,struct tmpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

__attribute__((used)) static int
FUNC8(struct vop_link_args *v)
{
	struct vnode *dvp = v->a_tdvp;
	struct vnode *vp = v->a_vp;
	struct componentname *cnp = v->a_cnp;

	int error;
	struct tmpfs_dirent *de;
	struct tmpfs_node *node;

	FUNC0(FUNC2(dvp));
	FUNC0(cnp->cn_flags & HASBUF);
	FUNC0(dvp != vp); /* XXX When can this be false? */
	node = FUNC3(vp);

	/* Ensure that we do not overflow the maximum number of links imposed
	 * by the system. */
	FUNC0(node->tn_links <= TMPFS_LINK_MAX);
	if (node->tn_links == TMPFS_LINK_MAX) {
		error = EMLINK;
		goto out;
	}

	/* We cannot create links of files marked immutable or append-only. */
	if (node->tn_flags & (IMMUTABLE | APPEND)) {
		error = EPERM;
		goto out;
	}

	/* Allocate a new directory entry to represent the node. */
	error = FUNC4(FUNC1(vp->v_mount), node,
	    cnp->cn_nameptr, cnp->cn_namelen, &de);
	if (error != 0)
		goto out;

	/* Insert the new directory entry into the appropriate directory. */
	if (cnp->cn_flags & ISWHITEOUT)
		FUNC6(dvp, cnp);
	FUNC5(dvp, de);

	/* vp link count has changed, so update node times. */
	node->tn_status |= TMPFS_NODE_CHANGED;
	FUNC7(vp);

	error = 0;

out:
	return error;
}
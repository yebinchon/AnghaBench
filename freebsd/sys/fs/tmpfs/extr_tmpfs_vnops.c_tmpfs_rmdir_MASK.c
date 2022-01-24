#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vop_rmdir_args {TYPE_2__* a_cnp; struct vnode* a_vp; struct vnode* a_dvp; } ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct TYPE_4__ {struct tmpfs_node* tn_parent; } ;
struct tmpfs_node {scalar_t__ tn_size; int tn_flags; int tn_status; int /*<<< orphan*/  tn_links; TYPE_1__ tn_dir; } ;
struct tmpfs_mount {int dummy; } ;
struct tmpfs_dirent {int dummy; } ;
struct TYPE_5__ {int cn_flags; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int APPEND ; 
 int DOWHITEOUT ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int IMMUTABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NOUNLINK ; 
 int FUNC1 (struct tmpfs_dirent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TMPFS_NODE_ACCESSED ; 
 int TMPFS_NODE_CHANGED ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_node*) ; 
 int TMPFS_NODE_MODIFIED ; 
 int /*<<< orphan*/  FUNC3 (struct tmpfs_node*) ; 
 struct tmpfs_mount* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode*) ; 
 struct tmpfs_node* FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,struct tmpfs_dirent*) ; 
 struct tmpfs_dirent* FUNC9 (struct tmpfs_node*,struct tmpfs_node*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct tmpfs_mount*,struct tmpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 scalar_t__ FUNC13 (struct vnode*) ; 

__attribute__((used)) static int
FUNC14(struct vop_rmdir_args *v)
{
	struct vnode *dvp = v->a_dvp;
	struct vnode *vp = v->a_vp;

	int error;
	struct tmpfs_dirent *de;
	struct tmpfs_mount *tmp;
	struct tmpfs_node *dnode;
	struct tmpfs_node *node;

	FUNC0(FUNC5(dvp));
	FUNC0(FUNC5(vp));

	tmp = FUNC4(dvp->v_mount);
	dnode = FUNC6(dvp);
	node = FUNC6(vp);

	/* Directories with more than two entries ('.' and '..') cannot be
	 * removed. */
	 if (node->tn_size > 0) {
		 error = ENOTEMPTY;
		 goto out;
	 }

	if ((dnode->tn_flags & APPEND)
	    || (node->tn_flags & (NOUNLINK | IMMUTABLE | APPEND))) {
		error = EPERM;
		goto out;
	}

	/* This invariant holds only if we are not trying to remove "..".
	  * We checked for that above so this is safe now. */
	FUNC0(node->tn_dir.tn_parent == dnode);

	/* Get the directory entry associated with node (vp).  This was
	 * filled by tmpfs_lookup while looking up the entry. */
	de = FUNC9(dnode, node, v->a_cnp);
	FUNC0(FUNC1(de,
	    v->a_cnp->cn_nameptr,
	    v->a_cnp->cn_namelen));

	/* Check flags to see if we are allowed to remove the directory. */
	if ((dnode->tn_flags & APPEND) != 0 ||
	    (node->tn_flags & (NOUNLINK | IMMUTABLE | APPEND)) != 0) {
		error = EPERM;
		goto out;
	}


	/* Detach the directory entry from the directory (dnode). */
	FUNC8(dvp, de);
	if (v->a_cnp->cn_flags & DOWHITEOUT)
		FUNC10(dvp, v->a_cnp);

	/* No vnode should be allocated for this entry from this point */
	FUNC2(node);
	node->tn_links--;
	node->tn_dir.tn_parent = NULL;
	node->tn_status |= TMPFS_NODE_ACCESSED | TMPFS_NODE_CHANGED |
	    TMPFS_NODE_MODIFIED;

	FUNC3(node);

	FUNC2(dnode);
	dnode->tn_links--;
	dnode->tn_status |= TMPFS_NODE_ACCESSED | TMPFS_NODE_CHANGED |
	    TMPFS_NODE_MODIFIED;
	FUNC3(dnode);

	if (FUNC13(dvp)) {
		FUNC7(dvp);
		FUNC7(vp);
	}

	/* Free the directory entry we just deleted.  Note that the node
	 * referred by it will not be removed until the vnode is really
	 * reclaimed. */
	FUNC11(tmp, de);

	/* Release the deleted vnode (will destroy the node, notify
	 * interested parties and clean it from the cache). */

	dnode->tn_status |= TMPFS_NODE_CHANGED;
	FUNC12(dvp);

	error = 0;

out:
	return error;
}
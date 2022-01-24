#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vop_remove_args {TYPE_1__* a_cnp; struct vnode* a_vp; struct vnode* a_dvp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct tmpfs_node {int tn_flags; int tn_status; } ;
struct tmpfs_mount {int dummy; } ;
struct tmpfs_dirent {int dummy; } ;
struct TYPE_3__ {int cn_flags; } ;

/* Variables and functions */
 int APPEND ; 
 int DOWHITEOUT ; 
 int EISDIR ; 
 int EPERM ; 
 int IMMUTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NOUNLINK ; 
 int TMPFS_NODE_ACCESSED ; 
 int TMPFS_NODE_CHANGED ; 
 scalar_t__ VDIR ; 
 struct tmpfs_mount* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 struct tmpfs_node* FUNC3 (struct vnode*) ; 
 struct tmpfs_node* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,struct tmpfs_dirent*) ; 
 struct tmpfs_dirent* FUNC6 (struct tmpfs_node*,struct tmpfs_node*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct tmpfs_mount*,struct tmpfs_dirent*) ; 

__attribute__((used)) static int
FUNC9(struct vop_remove_args *v)
{
	struct vnode *dvp = v->a_dvp;
	struct vnode *vp = v->a_vp;

	int error;
	struct tmpfs_dirent *de;
	struct tmpfs_mount *tmp;
	struct tmpfs_node *dnode;
	struct tmpfs_node *node;

	FUNC0(FUNC2(dvp));
	FUNC0(FUNC2(vp));

	if (vp->v_type == VDIR) {
		error = EISDIR;
		goto out;
	}

	dnode = FUNC3(dvp);
	node = FUNC4(vp);
	tmp = FUNC1(vp->v_mount);
	de = FUNC6(dnode, node, v->a_cnp);
	FUNC0(de != NULL);

	/* Files marked as immutable or append-only cannot be deleted. */
	if ((node->tn_flags & (IMMUTABLE | APPEND | NOUNLINK)) ||
	    (dnode->tn_flags & APPEND)) {
		error = EPERM;
		goto out;
	}

	/* Remove the entry from the directory; as it is a file, we do not
	 * have to change the number of hard links of the directory. */
	FUNC5(dvp, de);
	if (v->a_cnp->cn_flags & DOWHITEOUT)
		FUNC7(dvp, v->a_cnp);

	/* Free the directory entry we just deleted.  Note that the node
	 * referred by it will not be removed until the vnode is really
	 * reclaimed. */
	FUNC8(tmp, de);

	node->tn_status |= TMPFS_NODE_ACCESSED | TMPFS_NODE_CHANGED;
	error = 0;

out:

	return error;
}
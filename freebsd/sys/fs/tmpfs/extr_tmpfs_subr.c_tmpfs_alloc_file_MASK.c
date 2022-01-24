#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct vattr {int /*<<< orphan*/  va_rdev; int /*<<< orphan*/  va_mode; int /*<<< orphan*/  va_type; } ;
struct tmpfs_node {scalar_t__ tn_links; int /*<<< orphan*/  tn_gid; } ;
struct tmpfs_mount {int dummy; } ;
struct tmpfs_dirent {int dummy; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; TYPE_1__* cn_cred; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EMLINK ; 
 int HASBUF ; 
 int ISWHITEOUT ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TMPFS_LINK_MAX ; 
 int /*<<< orphan*/  VDIR ; 
 struct tmpfs_mount* FUNC2 (int /*<<< orphan*/ ) ; 
 struct tmpfs_node* FUNC3 (struct vnode*) ; 
 int FUNC4 (struct tmpfs_mount*,struct tmpfs_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmpfs_dirent**) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct tmpfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmpfs_node*,char const*,int /*<<< orphan*/ ,struct tmpfs_node**) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct tmpfs_node*,int /*<<< orphan*/ ,struct vnode**) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,struct tmpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC9 (struct tmpfs_mount*,struct tmpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC10 (struct tmpfs_mount*,struct tmpfs_node*) ; 

int
FUNC11(struct vnode *dvp, struct vnode **vpp, struct vattr *vap,
    struct componentname *cnp, const char *target)
{
	int error;
	struct tmpfs_dirent *de;
	struct tmpfs_mount *tmp;
	struct tmpfs_node *dnode;
	struct tmpfs_node *node;
	struct tmpfs_node *parent;

	FUNC0(dvp, "tmpfs_alloc_file");
	FUNC1(cnp->cn_flags & HASBUF);

	tmp = FUNC2(dvp->v_mount);
	dnode = FUNC3(dvp);
	*vpp = NULL;

	/* If the entry we are creating is a directory, we cannot overflow
	 * the number of links of its parent, because it will get a new
	 * link. */
	if (vap->va_type == VDIR) {
		/* Ensure that we do not overflow the maximum number of links
		 * imposed by the system. */
		FUNC1(dnode->tn_links <= TMPFS_LINK_MAX);
		if (dnode->tn_links == TMPFS_LINK_MAX) {
			return (EMLINK);
		}

		parent = dnode;
		FUNC1(parent != NULL);
	} else
		parent = NULL;

	/* Allocate a node that represents the new file. */
	error = FUNC5(dvp->v_mount, tmp, vap->va_type,
	    cnp->cn_cred->cr_uid, dnode->tn_gid, vap->va_mode, parent,
	    target, vap->va_rdev, &node);
	if (error != 0)
		return (error);

	/* Allocate a directory entry that points to the new file. */
	error = FUNC4(tmp, node, cnp->cn_nameptr, cnp->cn_namelen,
	    &de);
	if (error != 0) {
		FUNC10(tmp, node);
		return (error);
	}

	/* Allocate a vnode for the new file. */
	error = FUNC6(dvp->v_mount, node, LK_EXCLUSIVE, vpp);
	if (error != 0) {
		FUNC9(tmp, de);
		FUNC10(tmp, node);
		return (error);
	}

	/* Now that all required items are allocated, we can proceed to
	 * insert the new node into the directory, an operation that
	 * cannot fail. */
	if (cnp->cn_flags & ISWHITEOUT)
		FUNC8(dvp, cnp);
	FUNC7(dvp, de);
	return (0);
}
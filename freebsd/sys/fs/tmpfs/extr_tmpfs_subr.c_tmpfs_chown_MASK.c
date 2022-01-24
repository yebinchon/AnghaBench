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
typedef  scalar_t__ uid_t ;
struct vnode {TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct tmpfs_node {scalar_t__ tn_uid; scalar_t__ tn_gid; int tn_flags; int tn_mode; int /*<<< orphan*/  tn_status; } ;
struct thread {int dummy; } ;
typedef  scalar_t__ gid_t ;
struct TYPE_2__ {int mnt_flag; } ;

/* Variables and functions */
 int APPEND ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EPERM ; 
 int EROFS ; 
 int IMMUTABLE ; 
 int MNT_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PRIV_VFS_CHOWN ; 
 int /*<<< orphan*/  PRIV_VFS_RETAINSUGID ; 
 int S_ISGID ; 
 int S_ISUID ; 
 int /*<<< orphan*/  TMPFS_NODE_CHANGED ; 
 int /*<<< orphan*/  VADMIN ; 
 scalar_t__ VNOVAL ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 struct tmpfs_node* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct ucred*) ; 
 int FUNC5 (struct ucred*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct vnode *vp, uid_t uid, gid_t gid, struct ucred *cred,
    struct thread *p)
{
	int error;
	struct tmpfs_node *node;
	uid_t ouid;
	gid_t ogid;

	FUNC0(vp, "chown");

	node = FUNC3(vp);

	/* Assign default values if they are unknown. */
	FUNC1(uid != VNOVAL || gid != VNOVAL);
	if (uid == VNOVAL)
		uid = node->tn_uid;
	if (gid == VNOVAL)
		gid = node->tn_gid;
	FUNC1(uid != VNOVAL && gid != VNOVAL);

	/* Disallow this operation if the file system is mounted read-only. */
	if (vp->v_mount->mnt_flag & MNT_RDONLY)
		return EROFS;

	/* Immutable or append-only files cannot be modified, either. */
	if (node->tn_flags & (IMMUTABLE | APPEND))
		return EPERM;

	/*
	 * To modify the ownership of a file, must possess VADMIN for that
	 * file.
	 */
	if ((error = FUNC2(vp, VADMIN, cred, p)))
		return (error);

	/*
	 * To change the owner of a file, or change the group of a file to a
	 * group of which we are not a member, the caller must have
	 * privilege.
	 */
	if ((uid != node->tn_uid ||
	    (gid != node->tn_gid && !FUNC4(gid, cred))) &&
	    (error = FUNC5(cred, PRIV_VFS_CHOWN)))
		return (error);

	ogid = node->tn_gid;
	ouid = node->tn_uid;

	node->tn_uid = uid;
	node->tn_gid = gid;

	node->tn_status |= TMPFS_NODE_CHANGED;

	if ((node->tn_mode & (S_ISUID | S_ISGID)) && (ouid != uid || ogid != gid)) {
		if (FUNC5(cred, PRIV_VFS_RETAINSUGID))
			node->tn_mode &= ~(S_ISUID | S_ISGID);
	}

	FUNC0(vp, "chown2");

	return (0);
}
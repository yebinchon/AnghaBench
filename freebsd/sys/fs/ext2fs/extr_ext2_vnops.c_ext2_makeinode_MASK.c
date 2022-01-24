#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vnode {TYPE_1__* v_mount; int /*<<< orphan*/  v_type; } ;
struct inode {int i_mode; scalar_t__ i_uid; int i_flag; int i_nlink; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_gid; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_thread; TYPE_2__* cn_cred; } ;
struct TYPE_7__ {scalar_t__ cr_uid; } ;
struct TYPE_6__ {int mnt_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int HASBUF ; 
 int IFMT ; 
 int IFREG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IN_ACCESS ; 
 int IN_CHANGE ; 
 int IN_UPDATE ; 
 int ISGID ; 
 int ISUID ; 
 int ISWHITEOUT ; 
 int MNT_ACLS ; 
 int MNT_SUIDDIR ; 
 int /*<<< orphan*/  PRIV_VFS_RETAINSUGID ; 
 int /*<<< orphan*/  UF_OPAQUE ; 
 struct inode* FUNC2 (struct vnode*) ; 
 int FUNC3 (struct inode*,struct vnode*,struct componentname*) ; 
 int FUNC4 (struct vnode*,struct vnode*,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode*,int) ; 
 int FUNC6 (struct vnode*,int,TYPE_2__*,struct vnode**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 

__attribute__((used)) static int
FUNC11(int mode, struct vnode *dvp, struct vnode **vpp,
    struct componentname *cnp)
{
	struct inode *ip, *pdir;
	struct vnode *tvp;
	int error;

	pdir = FUNC2(dvp);
#ifdef INVARIANTS
	if ((cnp->cn_flags & HASBUF) == 0)
		panic("ext2_makeinode: no name");
#endif
	*vpp = NULL;
	if ((mode & IFMT) == 0)
		mode |= IFREG;

	error = FUNC6(dvp, mode, cnp->cn_cred, &tvp);
	if (error) {
		return (error);
	}
	ip = FUNC2(tvp);
	ip->i_gid = pdir->i_gid;
#ifdef SUIDDIR
	{
		/*
		 * if we are
		 * not the owner of the directory,
		 * and we are hacking owners here, (only do this where told to)
		 * and we are not giving it TOO root, (would subvert quotas)
		 * then go ahead and give it to the other user.
		 * Note that this drops off the execute bits for security.
		 */
		if ((dvp->v_mount->mnt_flag & MNT_SUIDDIR) &&
		    (pdir->i_mode & ISUID) &&
		    (pdir->i_uid != cnp->cn_cred->cr_uid) && pdir->i_uid) {
			ip->i_uid = pdir->i_uid;
			mode &= ~07111;
		} else {
			ip->i_uid = cnp->cn_cred->cr_uid;
		}
	}
#else
	ip->i_uid = cnp->cn_cred->cr_uid;
#endif
	ip->i_flag |= IN_ACCESS | IN_CHANGE | IN_UPDATE;
	ip->i_mode = mode;
	tvp->v_type = FUNC1(mode);	/* Rest init'd in getnewvnode(). */
	ip->i_nlink = 1;
	if ((ip->i_mode & ISGID) && !FUNC7(ip->i_gid, cnp->cn_cred)) {
		if (FUNC9(cnp->cn_cred, PRIV_VFS_RETAINSUGID))
			ip->i_mode &= ~ISGID;
	}

	if (cnp->cn_flags & ISWHITEOUT)
		ip->i_flags |= UF_OPAQUE;

	/*
	 * Make sure inode goes to disk before directory entry.
	 */
	error = FUNC5(tvp, !FUNC0(tvp));
	if (error)
		goto bad;

#ifdef UFS_ACL
	if (dvp->v_mount->mnt_flag & MNT_ACLS) {
		error = ext2_do_posix1e_acl_inheritance_file(dvp, tvp, mode,
		    cnp->cn_cred, cnp->cn_thread);
		if (error)
			goto bad;
	}
#endif /* UFS_ACL */

	error = FUNC3(ip, dvp, cnp);
	if (error)
		goto bad;

	*vpp = tvp;
	return (0);

bad:
	/*
	 * Write error occurred trying to update the inode
	 * or the directory so must deallocate the inode.
	 */
	ip->i_nlink = 0;
	ip->i_flag |= IN_CHANGE;
	FUNC10(tvp);
	return (error);
}
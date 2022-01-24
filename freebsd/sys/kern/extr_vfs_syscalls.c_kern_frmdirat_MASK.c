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
struct vnode {scalar_t__ v_type; int v_vflag; int v_iflag; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {struct vnode* ni_dvp; int /*<<< orphan*/  ni_cnd; struct vnode* ni_vp; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int AT_BENEATH ; 
 int AUDITVNODE1 ; 
 int BENEATH ; 
 int /*<<< orphan*/  CAP_LOOKUP ; 
 int /*<<< orphan*/  DELETE ; 
 int EBADF ; 
 int EBUSY ; 
 int EDEADLK ; 
 int EINVAL ; 
 int ENOTDIR ; 
 int FD_NONE ; 
 int LOCKLEAF ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int PCATCH ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  VFS_NOTIFY_UPPER_UNLINK ; 
 int VI_DOOMED ; 
 int FUNC2 (struct vnode*,struct vnode*,int /*<<< orphan*/ *) ; 
 int VV_ROOT ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_unlinkat_rights ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct thread*) ; 
 int FUNC6 (struct thread*,int,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct vnode*,struct vnode*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int FUNC11 (struct vnode*,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 

int
FUNC14(struct thread *td, int dfd, const char *path, int fd,
    enum uio_seg pathseg, int flag)
{
	struct mount *mp;
	struct vnode *vp;
	struct file *fp;
	struct nameidata nd;
	cap_rights_t rights;
	int error;

	fp = NULL;
	if (fd != FD_NONE) {
		error = FUNC6(td, fd, FUNC4(&rights, CAP_LOOKUP),
		    &fp);
		if (error != 0)
			return (error);
	}

restart:
	FUNC3();
	FUNC1(&nd, DELETE, LOCKPARENT | LOCKLEAF | AUDITVNODE1 |
	    ((flag & AT_BENEATH) != 0 ? BENEATH : 0),
	    pathseg, path, dfd, &cap_unlinkat_rights, td);
	if ((error = FUNC8(&nd)) != 0)
		goto fdout;
	vp = nd.ni_vp;
	if (vp->v_type != VDIR) {
		error = ENOTDIR;
		goto out;
	}
	/*
	 * No rmdir "." please.
	 */
	if (nd.ni_dvp == vp) {
		error = EINVAL;
		goto out;
	}
	/*
	 * The root of a mounted filesystem cannot be deleted.
	 */
	if (vp->v_vflag & VV_ROOT) {
		error = EBUSY;
		goto out;
	}

	if (fp != NULL && fp->f_vnode != vp) {
		if ((fp->f_vnode->v_iflag & VI_DOOMED) != 0)
			error = EBADF;
		else
			error = EDEADLK;
		goto out;
	}

#ifdef MAC
	error = mac_vnode_check_unlink(td->td_ucred, nd.ni_dvp, vp,
	    &nd.ni_cnd);
	if (error != 0)
		goto out;
#endif
	if (FUNC11(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
		FUNC0(&nd, NDF_ONLY_PNBUF);
		FUNC12(vp);
		if (nd.ni_dvp == vp)
			FUNC13(nd.ni_dvp);
		else
			FUNC12(nd.ni_dvp);
		if ((error = FUNC11(NULL, &mp, V_XSLEEP | PCATCH)) != 0)
			goto fdout;
		goto restart;
	}
	FUNC9(vp, VFS_NOTIFY_UPPER_UNLINK);
	error = FUNC2(nd.ni_dvp, nd.ni_vp, &nd.ni_cnd);
	FUNC10(mp);
out:
	FUNC0(&nd, NDF_ONLY_PNBUF);
	FUNC12(vp);
	if (nd.ni_dvp == vp)
		FUNC13(nd.ni_dvp);
	else
		FUNC12(nd.ni_dvp);
fdout:
	if (fp != NULL)
		FUNC5(fp, td);
	return (error);
}
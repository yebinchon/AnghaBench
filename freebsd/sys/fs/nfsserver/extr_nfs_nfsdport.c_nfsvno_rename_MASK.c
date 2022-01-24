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
typedef  int u_int32_t ;
struct vnode {scalar_t__ v_type; scalar_t__ v_mount; scalar_t__ v_mountedhere; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {int cn_namelen; char* cn_nameptr; } ;
struct nameidata {struct vnode* ni_startdir; struct vnode* ni_dvp; TYPE_1__ ni_cnd; struct vnode* ni_vp; } ;
typedef  int /*<<< orphan*/  fhandle_t ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int EISDIR ; 
 int ENOTDIR ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int EXDEV ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int ND_NFSV2 ; 
 int ND_NFSV4 ; 
 int NFSDEV_MAXMIRRORS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PNFS_FILENAME_LEN ; 
 scalar_t__ VDIR ; 
 int FUNC4 (struct vnode*,struct vnode*,TYPE_1__*,struct vnode*,struct vnode*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,struct thread*) ; 
 int FUNC6 (struct vnode*,int,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode**,int,char*,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,struct thread*,struct vnode**,int*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

int
FUNC12(struct nameidata *fromndp, struct nameidata *tondp,
    u_int32_t ndstat, u_int32_t ndflag, struct ucred *cred, struct thread *p)
{
	struct vnode *fvp, *tvp, *tdvp, *dsdvp[NFSDEV_MAXMIRRORS];
	int error = 0, mirrorcnt;
	char fname[PNFS_FILENAME_LEN + 1];
	fhandle_t fh;

	dsdvp[0] = NULL;
	fvp = fromndp->ni_vp;
	if (ndstat) {
		FUNC11(fromndp->ni_dvp);
		FUNC11(fvp);
		error = ndstat;
		goto out1;
	}
	tdvp = tondp->ni_dvp;
	tvp = tondp->ni_vp;
	if (tvp != NULL) {
		if (fvp->v_type == VDIR && tvp->v_type != VDIR) {
			error = (ndflag & ND_NFSV2) ? EISDIR : EEXIST;
			goto out;
		} else if (fvp->v_type != VDIR && tvp->v_type == VDIR) {
			error = (ndflag & ND_NFSV2) ? ENOTDIR : EEXIST;
			goto out;
		}
		if (tvp->v_type == VDIR && tvp->v_mountedhere) {
			error = (ndflag & ND_NFSV2) ? ENOTEMPTY : EXDEV;
			goto out;
		}

		/*
		 * A rename to '.' or '..' results in a prematurely
		 * unlocked vnode on FreeBSD5, so I'm just going to fail that
		 * here.
		 */
		if ((tondp->ni_cnd.cn_namelen == 1 &&
		     tondp->ni_cnd.cn_nameptr[0] == '.') ||
		    (tondp->ni_cnd.cn_namelen == 2 &&
		     tondp->ni_cnd.cn_nameptr[0] == '.' &&
		     tondp->ni_cnd.cn_nameptr[1] == '.')) {
			error = EINVAL;
			goto out;
		}
	}
	if (fvp->v_type == VDIR && fvp->v_mountedhere) {
		error = (ndflag & ND_NFSV2) ? ENOTEMPTY : EXDEV;
		goto out;
	}
	if (fvp->v_mount != tdvp->v_mount) {
		error = (ndflag & ND_NFSV2) ? ENOTEMPTY : EXDEV;
		goto out;
	}
	if (fvp == tdvp) {
		error = (ndflag & ND_NFSV2) ? ENOTEMPTY : EINVAL;
		goto out;
	}
	if (fvp == tvp) {
		/*
		 * If source and destination are the same, there is nothing to
		 * do. Set error to -1 to indicate this.
		 */
		error = -1;
		goto out;
	}
	if (ndflag & ND_NFSV4) {
		if (FUNC2(fvp, LK_EXCLUSIVE) == 0) {
			error = FUNC6(fvp, 0, p);
			FUNC3(fvp, 0);
		} else
			error = EPERM;
		if (tvp && !error)
			error = FUNC6(tvp, 1, p);
	} else {
		/*
		 * For NFSv2 and NFSv3, try to get rid of the delegation, so
		 * that the NFSv4 client won't be confused by the rename.
		 * Since nfsd_recalldelegation() can only be called on an
		 * unlocked vnode at this point and fvp is the file that will
		 * still exist after the rename, just do fvp.
		 */
		FUNC5(fvp, p);
	}
	if (error == 0 && tvp != NULL) {
		FUNC8(tvp, p, dsdvp, &mirrorcnt, fname, &fh);
		FUNC0(4, "nfsvno_rename: pnfsremovesetup"
		    " dsdvp=%p\n", dsdvp[0]);
	}
out:
	if (!error) {
		error = FUNC4(fromndp->ni_dvp, fromndp->ni_vp,
		    &fromndp->ni_cnd, tondp->ni_dvp, tondp->ni_vp,
		    &tondp->ni_cnd);
	} else {
		if (tdvp == tvp)
			FUNC11(tdvp);
		else
			FUNC10(tdvp);
		if (tvp)
			FUNC10(tvp);
		FUNC11(fromndp->ni_dvp);
		FUNC11(fvp);
		if (error == -1)
			error = 0;
	}

	/*
	 * If dsdvp[0] != NULL, it was set up by nfsrv_pnfsremovesetup() and
	 * if the rename succeeded, the DS file for the tvp needs to be
	 * removed.
	 */
	if (error == 0 && dsdvp[0] != NULL) {
		FUNC7(dsdvp, mirrorcnt, fname, &fh, p);
		FUNC0(4, "nfsvno_rename: pnfsremove\n");
	}

	FUNC11(tondp->ni_startdir);
	FUNC9(tondp);
out1:
	FUNC11(fromndp->ni_startdir);
	FUNC9(fromndp);
	FUNC1(error);
	return (error);
}
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
struct vop_vptocnp_args {char* a_buf; int* a_buflen; struct ucred* a_cred; struct vnode** a_vpp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_vflag; TYPE_1__* v_mount; } ;
struct vattr {scalar_t__ va_fileid; int va_blocksize; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct dirent {scalar_t__ d_type; scalar_t__ d_fileno; char* d_name; int d_namlen; } ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {int mnt_flag; struct vnode* mnt_vnodecovered; } ;

/* Variables and functions */
 int DEV_BSIZE ; 
 scalar_t__ DT_WHT ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FOLLOW ; 
 int FREAD ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int LOCKLEAF ; 
 int LOCKSHARED ; 
 int /*<<< orphan*/  LOOKUP ; 
 int MNT_UNION ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct vnode*,struct thread*) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  VN_OPEN_NOAUDIT ; 
 int FUNC2 (struct vnode*,struct vattr*,struct ucred*) ; 
 int FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int VV_ROOT ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 struct thread* curthread ; 
 scalar_t__ FUNC7 (struct vnode*,char*,struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct vnode*,struct dirent**,char*,int,scalar_t__*,char**,int*,int*,struct thread*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*,int,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int) ; 
 int FUNC13 (struct nameidata*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*) ; 

int
FUNC17(struct vop_vptocnp_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode **dvp = ap->a_vpp;
	struct ucred *cred = ap->a_cred;
	char *buf = ap->a_buf;
	int *buflen = ap->a_buflen;
	char *dirbuf, *cpos;
	int i, error, eofflag, dirbuflen, flags, locked, len, covered;
	off_t off;
	ino_t fileno;
	struct vattr va;
	struct nameidata nd;
	struct thread *td;
	struct dirent *dp;
	struct vnode *mvp;

	i = *buflen;
	error = 0;
	covered = 0;
	td = curthread;

	if (vp->v_type != VDIR)
		return (ENOENT);

	error = FUNC2(vp, &va, cred);
	if (error)
		return (error);

	FUNC5(vp);
	locked = FUNC3(vp);
	FUNC4(vp, 0);
	FUNC1(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF, UIO_SYSSPACE,
	    "..", vp, td);
	flags = FREAD;
	error = FUNC13(&nd, &flags, 0, VN_OPEN_NOAUDIT, cred, NULL);
	if (error) {
		FUNC12(vp, locked | LK_RETRY);
		return (error);
	}
	FUNC0(&nd, NDF_ONLY_PNBUF);

	mvp = *dvp = nd.ni_vp;

	if (vp->v_mount != (*dvp)->v_mount &&
	    ((*dvp)->v_vflag & VV_ROOT) &&
	    ((*dvp)->v_mount->mnt_flag & MNT_UNION)) {
		*dvp = (*dvp)->v_mount->mnt_vnodecovered;
		FUNC5(mvp);
		FUNC4(mvp, 0);
		FUNC11(mvp, FREAD, cred, td);
		FUNC5(*dvp);
		FUNC12(*dvp, LK_SHARED | LK_RETRY);
		covered = 1;
	}

	fileno = va.va_fileid;

	dirbuflen = DEV_BSIZE;
	if (dirbuflen < va.va_blocksize)
		dirbuflen = va.va_blocksize;
	dirbuf = (char *)FUNC10(dirbuflen, M_TEMP, M_WAITOK);

	if ((*dvp)->v_type != VDIR) {
		error = ENOENT;
		goto out;
	}

	off = 0;
	len = 0;
	do {
		/* call VOP_READDIR of parent */
		error = FUNC9(*dvp, &dp, dirbuf, dirbuflen, &off,
					&cpos, &len, &eofflag, td);
		if (error)
			goto out;

		if ((dp->d_type != DT_WHT) &&
		    (dp->d_fileno == fileno)) {
			if (covered) {
				FUNC4(*dvp, 0);
				FUNC12(mvp, LK_SHARED | LK_RETRY);
				if (FUNC7(mvp, dp->d_name, td)) {
					error = ENOENT;
					FUNC4(mvp, 0);
					FUNC12(*dvp, LK_SHARED | LK_RETRY);
					goto out;
				}
				FUNC4(mvp, 0);
				FUNC12(*dvp, LK_SHARED | LK_RETRY);
			}
			i -= dp->d_namlen;

			if (i < 0) {
				error = ENOMEM;
				goto out;
			}
			if (dp->d_namlen == 1 && dp->d_name[0] == '.') {
				error = ENOENT;
			} else {
				FUNC6(dp->d_name, buf + i, dp->d_namlen);
				error = 0;
			}
			goto out;
		}
	} while (len > 0 || !eofflag);
	error = ENOENT;

out:
	FUNC8(dirbuf, M_TEMP);
	if (!error) {
		*buflen = i;
		FUNC15(*dvp);
	}
	if (covered) {
		FUNC14(*dvp);
		FUNC16(mvp);
	} else {
		FUNC4(mvp, 0);
		FUNC11(mvp, FREAD, cred, td);
	}
	FUNC12(vp, locked | LK_RETRY);
	return (error);
}
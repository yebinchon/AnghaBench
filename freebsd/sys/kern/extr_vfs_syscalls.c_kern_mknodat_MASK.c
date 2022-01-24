#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct vattr {int va_mode; int /*<<< orphan*/  va_type; int /*<<< orphan*/  va_rdev; } ;
struct thread {int /*<<< orphan*/  td_ucred; TYPE_2__* td_proc; } ;
struct nameidata {struct vnode* ni_dvp; struct vnode* ni_vp; int /*<<< orphan*/  ni_cnd; } ;
struct mount {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int fd_cmask; } ;

/* Variables and functions */
 int ALLPERMS ; 
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CREATE ; 
 int EEXIST ; 
 int EINVAL ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NOCACHE ; 
 int PCATCH ; 
 int /*<<< orphan*/  PRIV_VFS_MKNOD_DEV ; 
 int /*<<< orphan*/  PRIV_VFS_MKNOD_WHT ; 
 int SAVENAME ; 
#define  S_IFBLK 131 
#define  S_IFCHR 130 
#define  S_IFIFO 129 
 int S_IFMT ; 
#define  S_IFWHT 128 
 int /*<<< orphan*/  FUNC4 (struct vattr*) ; 
 int /*<<< orphan*/  VBLK ; 
 int /*<<< orphan*/  VCHR ; 
 int /*<<< orphan*/  VNOVAL ; 
 int FUNC5 (struct vnode*,struct vnode**,int /*<<< orphan*/ *,struct vattr*) ; 
 int FUNC6 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  cap_mknodat_rights ; 
 int FUNC8 (struct thread*,int,char const*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ *,struct vattr*) ; 
 int FUNC10 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mount*) ; 
 int FUNC14 (struct vnode*,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*) ; 

int
FUNC17(struct thread *td, int fd, const char *path, enum uio_seg pathseg,
    int mode, dev_t dev)
{
	struct vnode *vp;
	struct mount *mp;
	struct vattr vattr;
	struct nameidata nd;
	int error, whiteout = 0;

	FUNC1(mode);
	FUNC0(dev);
	switch (mode & S_IFMT) {
	case S_IFCHR:
	case S_IFBLK:
		error = FUNC12(td, PRIV_VFS_MKNOD_DEV);
		if (error == 0 && dev == VNOVAL)
			error = EINVAL;
		break;
	case S_IFWHT:
		error = FUNC12(td, PRIV_VFS_MKNOD_WHT);
		break;
	case S_IFIFO:
		if (dev == 0)
			return (FUNC8(td, fd, path, pathseg, mode));
		/* FALLTHROUGH */
	default:
		error = EINVAL;
		break;
	}
	if (error != 0)
		return (error);
restart:
	FUNC7();
	FUNC3(&nd, CREATE, LOCKPARENT | SAVENAME | AUDITVNODE1 |
	    NOCACHE, pathseg, path, fd, &cap_mknodat_rights,
	    td);
	if ((error = FUNC10(&nd)) != 0)
		return (error);
	vp = nd.ni_vp;
	if (vp != NULL) {
		FUNC2(&nd, NDF_ONLY_PNBUF);
		if (vp == nd.ni_dvp)
			FUNC16(nd.ni_dvp);
		else
			FUNC15(nd.ni_dvp);
		FUNC16(vp);
		return (EEXIST);
	} else {
		FUNC4(&vattr);
		vattr.va_mode = (mode & ALLPERMS) &
		    ~td->td_proc->p_fd->fd_cmask;
		vattr.va_rdev = dev;
		whiteout = 0;

		switch (mode & S_IFMT) {
		case S_IFCHR:
			vattr.va_type = VCHR;
			break;
		case S_IFBLK:
			vattr.va_type = VBLK;
			break;
		case S_IFWHT:
			whiteout = 1;
			break;
		default:
			FUNC11("kern_mknod: invalid mode");
		}
	}
	if (FUNC14(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
		FUNC2(&nd, NDF_ONLY_PNBUF);
		FUNC15(nd.ni_dvp);
		if ((error = FUNC14(NULL, &mp, V_XSLEEP | PCATCH)) != 0)
			return (error);
		goto restart;
	}
#ifdef MAC
	if (error == 0 && !whiteout)
		error = mac_vnode_check_create(td->td_ucred, nd.ni_dvp,
		    &nd.ni_cnd, &vattr);
#endif
	if (error == 0) {
		if (whiteout)
			error = FUNC6(nd.ni_dvp, &nd.ni_cnd, CREATE);
		else {
			error = FUNC5(nd.ni_dvp, &nd.ni_vp,
						&nd.ni_cnd, &vattr);
			if (error == 0)
				FUNC15(nd.ni_vp);
		}
	}
	FUNC2(&nd, NDF_ONLY_PNBUF);
	FUNC15(nd.ni_dvp);
	FUNC13(mp);
	return (error);
}
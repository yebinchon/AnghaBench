#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct vattr {int va_mode; int /*<<< orphan*/  va_type; } ;
struct thread {int /*<<< orphan*/  td_ucred; TYPE_2__* td_proc; } ;
struct TYPE_7__ {int /*<<< orphan*/  cn_flags; } ;
struct nameidata {struct vnode* ni_vp; struct vnode* ni_dvp; TYPE_3__ ni_cnd; } ;
struct mount {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_6__ {TYPE_1__* p_fd; } ;
struct TYPE_5__ {int fd_cmask; } ;

/* Variables and functions */
 int ACCESSPERMS ; 
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CREATE ; 
 int EEXIST ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NOCACHE ; 
 int PCATCH ; 
 int SAVENAME ; 
 int /*<<< orphan*/  FUNC3 (struct vattr*) ; 
 int /*<<< orphan*/  VDIR ; 
 int FUNC4 (struct vnode*,struct vnode**,TYPE_3__*,struct vattr*) ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 int /*<<< orphan*/  WILLBEDIR ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  cap_mkdirat_rights ; 
 int FUNC6 (int /*<<< orphan*/ ,struct vnode*,TYPE_3__*,struct vattr*) ; 
 int FUNC7 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int FUNC9 (struct vnode*,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

int
FUNC12(struct thread *td, int fd, const char *path, enum uio_seg segflg,
    int mode)
{
	struct mount *mp;
	struct vnode *vp;
	struct vattr vattr;
	struct nameidata nd;
	int error;

	FUNC0(mode);
restart:
	FUNC5();
	FUNC2(&nd, CREATE, LOCKPARENT | SAVENAME | AUDITVNODE1 |
	    NOCACHE, segflg, path, fd, &cap_mkdirat_rights,
	    td);
	nd.ni_cnd.cn_flags |= WILLBEDIR;
	if ((error = FUNC7(&nd)) != 0)
		return (error);
	vp = nd.ni_vp;
	if (vp != NULL) {
		FUNC1(&nd, NDF_ONLY_PNBUF);
		/*
		 * XXX namei called with LOCKPARENT but not LOCKLEAF has
		 * the strange behaviour of leaving the vnode unlocked
		 * if the target is the same vnode as the parent.
		 */
		if (vp == nd.ni_dvp)
			FUNC11(nd.ni_dvp);
		else
			FUNC10(nd.ni_dvp);
		FUNC11(vp);
		return (EEXIST);
	}
	if (FUNC9(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
		FUNC1(&nd, NDF_ONLY_PNBUF);
		FUNC10(nd.ni_dvp);
		if ((error = FUNC9(NULL, &mp, V_XSLEEP | PCATCH)) != 0)
			return (error);
		goto restart;
	}
	FUNC3(&vattr);
	vattr.va_type = VDIR;
	vattr.va_mode = (mode & ACCESSPERMS) &~ td->td_proc->p_fd->fd_cmask;
#ifdef MAC
	error = mac_vnode_check_create(td->td_ucred, nd.ni_dvp, &nd.ni_cnd,
	    &vattr);
	if (error != 0)
		goto out;
#endif
	error = FUNC4(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &vattr);
#ifdef MAC
out:
#endif
	FUNC1(&nd, NDF_ONLY_PNBUF);
	FUNC10(nd.ni_dvp);
	if (error == 0)
		FUNC10(nd.ni_vp);
	FUNC8(mp);
	return (error);
}
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
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct vattr {TYPE_2__ va_mtime; } ;
struct uio {scalar_t__ uio_segflg; scalar_t__ uio_resid; scalar_t__ uio_offset; struct thread* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct smbnode {int n_flag; int /*<<< orphan*/  n_fid; TYPE_1__ n_mtime; } ;
struct smbmount {int /*<<< orphan*/  sm_share; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int LK_DOWNGRADE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int LK_UPGRADE ; 
 int NMODIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ UIO_NOCOPY ; 
 scalar_t__ VDIR ; 
 struct smbmount* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vnode*,struct vattr*,struct ucred*) ; 
 scalar_t__ VREG ; 
 struct smbnode* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_cred*,struct thread*,struct ucred*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_cred*) ; 
 struct smb_cred* FUNC8 () ; 
 int FUNC9 (struct vnode*,struct uio*,struct ucred*) ; 
 int FUNC10 (struct vnode*,struct thread*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*,int) ; 

int
FUNC12(struct vnode *vp, struct uio *uiop, struct ucred *cred)
{
	struct smbmount *smp = FUNC1(vp->v_mount);
	struct smbnode *np = FUNC3(vp);
	struct thread *td;
	struct vattr vattr;
	struct smb_cred *scred;
	int error, lks;

	/*
	 * Protect against method which is not supported for now
	 */
	if (uiop->uio_segflg == UIO_NOCOPY)
		return EOPNOTSUPP;

	if (vp->v_type != VREG && vp->v_type != VDIR) {
		FUNC0("vn types other than VREG or VDIR are unsupported !\n");
		return EIO;
	}
	if (uiop->uio_resid == 0)
		return 0;
	if (uiop->uio_offset < 0)
		return EINVAL;
/*	if (uiop->uio_offset + uiop->uio_resid > smp->nm_maxfilesize)
		return EFBIG;*/
	td = uiop->uio_td;
	if (vp->v_type == VDIR) {
		lks = LK_EXCLUSIVE;	/* lockstatus(vp->v_vnlock); */
		if (lks == LK_SHARED)
			FUNC11(vp, LK_UPGRADE | LK_RETRY);
		error = FUNC9(vp, uiop, cred);
		if (lks == LK_SHARED)
			FUNC11(vp, LK_DOWNGRADE | LK_RETRY);
		return error;
	}

/*	biosize = SSTOCN(smp->sm_share)->sc_txmax;*/
	if (np->n_flag & NMODIFIED) {
		FUNC6(vp);
		error = FUNC2(vp, &vattr, cred);
		if (error)
			return error;
		np->n_mtime.tv_sec = vattr.va_mtime.tv_sec;
	} else {
		error = FUNC2(vp, &vattr, cred);
		if (error)
			return error;
		if (np->n_mtime.tv_sec != vattr.va_mtime.tv_sec) {
			error = FUNC10(vp, td);
			if (error)
				return error;
			np->n_mtime.tv_sec = vattr.va_mtime.tv_sec;
		}
	}
	scred = FUNC8();
	FUNC4(scred, td, cred);
	error = FUNC5(smp->sm_share, np->n_fid, uiop, scred);
	FUNC7(scred);
	return (error);
}
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
struct vnode {scalar_t__ v_type; } ;
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; struct thread* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct smbnode {int n_flag; scalar_t__ n_size; int /*<<< orphan*/  n_fid; } ;
struct smbmount {int /*<<< orphan*/  sm_share; } ;
struct smb_cred {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int EFBIG ; 
 int EINVAL ; 
 int EIO ; 
 int IO_APPEND ; 
 int IO_SYNC ; 
 int NMODIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ *,struct ucred*) ; 
 scalar_t__ VREG ; 
 struct smbnode* FUNC3 (struct vnode*) ; 
 struct smbmount* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_cred*,struct thread*,struct ucred*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_cred*) ; 
 struct smb_cred* FUNC9 () ; 
 int FUNC10 (struct vnode*,struct thread*) ; 
 int /*<<< orphan*/  vattr ; 
 scalar_t__ FUNC11 (struct vnode*,struct uio*,struct thread*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,scalar_t__) ; 

int
FUNC13(struct vnode *vp, struct uio *uiop,
	struct ucred *cred, int ioflag)
{
	struct smbmount *smp = FUNC4(vp);
	struct smbnode *np = FUNC3(vp);
	struct smb_cred *scred;
	struct thread *td;
	int error = 0;

	if (vp->v_type != VREG) {
		FUNC0("vn types other than VREG unsupported !\n");
		return EIO;
	}
	FUNC1("ofs=%jd,resid=%zd\n", (intmax_t)uiop->uio_offset, 
	    uiop->uio_resid);
	if (uiop->uio_offset < 0)
		return EINVAL;
/*	if (uiop->uio_offset + uiop->uio_resid > smp->nm_maxfilesize)
		return (EFBIG);*/
	td = uiop->uio_td;
	if (ioflag & (IO_APPEND | IO_SYNC)) {
		if (np->n_flag & NMODIFIED) {
			FUNC7(vp);
			error = FUNC10(vp, td);
			if (error)
				return error;
		}
		if (ioflag & IO_APPEND) {
#ifdef notyet
			/*
			 * File size can be changed by another client
			 */
			smbfs_attr_cacheremove(vp);
			error = VOP_GETATTR(vp, &vattr, cred);
			if (error) return (error);
#endif
			uiop->uio_offset = np->n_size;
		}
	}
	if (uiop->uio_resid == 0)
		return 0;

	if (FUNC11(vp, uiop, td))
		return (EFBIG);
	
	scred = FUNC9();
	FUNC5(scred, td, cred);
	error = FUNC6(smp->sm_share, np->n_fid, uiop, scred);
	FUNC8(scred);
	FUNC1("after: ofs=%jd,resid=%zd\n", (intmax_t)uiop->uio_offset, 
	    uiop->uio_resid);
	if (!error) {
		if (uiop->uio_offset > np->n_size) {
			np->n_size = uiop->uio_offset;
			FUNC12(vp, np->n_size);
		}
	}
	return error;
}
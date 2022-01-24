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
struct vnode {scalar_t__ v_type; struct mount* v_mount; } ;
struct TYPE_3__ {struct vnode* vp; } ;
struct TYPE_4__ {TYPE_1__ vop_args; } ;
struct vn_io_fault_args {int flags; TYPE_2__ args; struct ucred* cred; int /*<<< orphan*/  kind; } ;
struct uio {int uio_iovcnt; int uio_resid; int uio_segflg; int uio_rw; struct thread* uio_td; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  enum uio_rw { ____Placeholder_uio_rw } uio_rw ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EINVAL ; 
 int EIO ; 
 int IO_NODELOCKED ; 
 int IO_NOMACCHECK ; 
 int IO_RANGELOCKED ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 scalar_t__ FUNC1 (struct mount*) ; 
 int PCATCH ; 
 int UIO_READ ; 
 int UIO_WRITE ; 
 scalar_t__ VCHR ; 
 int /*<<< orphan*/  VN_IO_FAULT_VOP ; 
 int FUNC2 (struct vnode*,struct uio*,int,struct ucred*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vnode*,struct uio*,int,struct ucred*) ; 
 int V_WAIT ; 
 scalar_t__ FUNC5 (struct vnode*,struct uio*) ; 
 int FUNC6 (struct ucred*,struct ucred*,struct vnode*) ; 
 int FUNC7 (struct ucred*,struct ucred*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int FUNC9 (struct vnode*,struct uio*,struct vn_io_fault_args*,struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 
 void* FUNC11 (struct vnode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,void*) ; 
 void* FUNC13 (struct vnode*,scalar_t__,scalar_t__) ; 
 int FUNC14 (struct vnode*,struct mount**,int) ; 

int
FUNC15(enum uio_rw rw, struct vnode *vp, void *base, int len, off_t offset,
    enum uio_seg segflg, int ioflg, struct ucred *active_cred,
    struct ucred *file_cred, ssize_t *aresid, struct thread *td)
{
	struct uio auio;
	struct iovec aiov;
	struct mount *mp;
	struct ucred *cred;
	void *rl_cookie;
	struct vn_io_fault_args args;
	int error, lock_flags;

	if (offset < 0 && vp->v_type != VCHR)
		return (EINVAL);
	auio.uio_iov = &aiov;
	auio.uio_iovcnt = 1;
	aiov.iov_base = base;
	aiov.iov_len = len;
	auio.uio_resid = len;
	auio.uio_offset = offset;
	auio.uio_segflg = segflg;
	auio.uio_rw = rw;
	auio.uio_td = td;
	error = 0;

	if ((ioflg & IO_NODELOCKED) == 0) {
		if ((ioflg & IO_RANGELOCKED) == 0) {
			if (rw == UIO_READ) {
				rl_cookie = FUNC11(vp, offset,
				    offset + len);
			} else {
				rl_cookie = FUNC13(vp, offset,
				    offset + len);
			}
		} else
			rl_cookie = NULL;
		mp = NULL;
		if (rw == UIO_WRITE) { 
			if (vp->v_type != VCHR &&
			    (error = FUNC14(vp, &mp, V_WAIT | PCATCH))
			    != 0)
				goto out;
			if (FUNC1(mp) ||
			    ((mp == NULL) && FUNC1(vp->v_mount)))
				lock_flags = LK_SHARED;
			else
				lock_flags = LK_EXCLUSIVE;
		} else
			lock_flags = LK_SHARED;
		FUNC10(vp, lock_flags | LK_RETRY);
	} else
		rl_cookie = NULL;

	FUNC0(vp, "IO_NODELOCKED with no vp lock held");
#ifdef MAC
	if ((ioflg & IO_NOMACCHECK) == 0) {
		if (rw == UIO_READ)
			error = mac_vnode_check_read(active_cred, file_cred,
			    vp);
		else
			error = mac_vnode_check_write(active_cred, file_cred,
			    vp);
	}
#endif
	if (error == 0) {
		if (file_cred != NULL)
			cred = file_cred;
		else
			cred = active_cred;
		if (FUNC5(vp, &auio)) {
			args.kind = VN_IO_FAULT_VOP;
			args.cred = cred;
			args.flags = ioflg;
			args.args.vop_args.vp = vp;
			error = FUNC9(vp, &auio, &args, td);
		} else if (rw == UIO_READ) {
			error = FUNC2(vp, &auio, ioflg, cred);
		} else /* if (rw == UIO_WRITE) */ {
			error = FUNC4(vp, &auio, ioflg, cred);
		}
	}
	if (aresid)
		*aresid = auio.uio_resid;
	else
		if (auio.uio_resid && error == 0)
			error = EIO;
	if ((ioflg & IO_NODELOCKED) == 0) {
		FUNC3(vp, 0);
		if (mp != NULL)
			FUNC8(mp);
	}
 out:
	if (rl_cookie != NULL)
		FUNC12(vp, rl_cookie);
	return (error);
}
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
struct vnode {TYPE_1__* v_mount; } ;
struct uio {int uio_iovcnt; scalar_t__ uio_resid; struct thread* uio_td; int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ufs2_dinode {scalar_t__ di_extsize; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/ * iov_base; } ;
struct inode {int i_ea_error; scalar_t__ i_ea_len; scalar_t__ i_ea_refs; int /*<<< orphan*/ * i_ea_area; struct ufs2_dinode* i_din2; } ;
struct TYPE_2__ {struct ucred* mnt_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EINVAL ; 
 int IO_EXT ; 
 int IO_SYNC ; 
 int /*<<< orphan*/  M_TEMP ; 
 struct ucred* NOCRED ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 struct inode* FUNC1 (struct vnode*) ; 
 int FUNC2 (struct vnode*,struct uio*,int,struct ucred*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int,struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct vnode *vp, int commit, struct ucred *cred, struct thread *td)
{
	struct inode *ip;
	struct uio luio;
	struct iovec liovec;
	int error;
	struct ufs2_dinode *dp;

	ip = FUNC1(vp);

	FUNC3(vp);
	if (ip->i_ea_area == NULL) {
		FUNC5(vp);
		return (EINVAL);
	}
	dp = ip->i_din2;
	error = ip->i_ea_error;
	if (commit && error == 0) {
		FUNC0(vp, "ffs_close_ea commit");
		if (cred == NOCRED)
			cred =  vp->v_mount->mnt_cred;
		liovec.iov_base = ip->i_ea_area;
		liovec.iov_len = ip->i_ea_len;
		luio.uio_iov = &liovec;
		luio.uio_iovcnt = 1;
		luio.uio_offset = 0;
		luio.uio_resid = ip->i_ea_len;
		luio.uio_segflg = UIO_SYSSPACE;
		luio.uio_rw = UIO_WRITE;
		luio.uio_td = td;
		/* XXX: I'm not happy about truncating to zero size */
		if (ip->i_ea_len < dp->di_extsize)
			error = FUNC4(vp, 0, IO_EXT, cred);
		error = FUNC2(vp, &luio, IO_EXT | IO_SYNC, cred);
	}
	if (--ip->i_ea_refs == 0) {
		FUNC6(ip->i_ea_area, M_TEMP);
		ip->i_ea_area = NULL;
		ip->i_ea_len = 0;
		ip->i_ea_error = 0;
	}
	FUNC5(vp);
	return (error);
}
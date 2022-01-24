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
struct statfs {scalar_t__ f_maxfilesize; } ;
typedef  struct statfs uint8_t ;
struct vop_allocate_args {scalar_t__* a_len; scalar_t__* a_offset; struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct vattr {scalar_t__ va_size; size_t va_blocksize; } ;
struct uio {int uio_iovcnt; size_t uio_resid; struct thread* uio_td; int /*<<< orphan*/  uio_rw; void* uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct iovec {scalar_t__ iov_len; struct statfs* iov_base; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 size_t BLKDEV_IOSIZE ; 
 int EFBIG ; 
 size_t MAXPHYS ; 
 int /*<<< orphan*/  M_STATFS ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  UIO_READ ; 
 void* UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vattr*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct statfs*,struct thread*) ; 
 int FUNC2 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct statfs*,scalar_t__) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC7 (struct statfs*,int /*<<< orphan*/ ) ; 
 struct statfs* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 

int
FUNC10(struct vop_allocate_args *ap)
{
#ifdef __notyet__
	struct statfs *sfs;
	off_t maxfilesize = 0;
#endif
	struct iovec aiov;
	struct vattr vattr, *vap;
	struct uio auio;
	off_t fsize, len, cur, offset;
	uint8_t *buf;
	struct thread *td;
	struct vnode *vp;
	size_t iosize;
	int error;

	buf = NULL;
	error = 0;
	td = curthread;
	vap = &vattr;
	vp = ap->a_vp;
	len = *ap->a_len;
	offset = *ap->a_offset;

	error = FUNC2(vp, vap, td->td_ucred);
	if (error != 0)
		goto out;
	fsize = vap->va_size;
	iosize = vap->va_blocksize;
	if (iosize == 0)
		iosize = BLKDEV_IOSIZE;
	if (iosize > MAXPHYS)
		iosize = MAXPHYS;
	buf = FUNC8(iosize, M_TEMP, M_WAITOK);

#ifdef __notyet__
	/*
	 * Check if the filesystem sets f_maxfilesize; if not use
	 * VOP_SETATTR to perform the check.
	 */
	sfs = malloc(sizeof(struct statfs), M_STATFS, M_WAITOK);
	error = VFS_STATFS(vp->v_mount, sfs, td);
	if (error == 0)
		maxfilesize = sfs->f_maxfilesize;
	free(sfs, M_STATFS);
	if (error != 0)
		goto out;
	if (maxfilesize) {
		if (offset > maxfilesize || len > maxfilesize ||
		    offset + len > maxfilesize) {
			error = EFBIG;
			goto out;
		}
	} else
#endif
	if (offset + len > vap->va_size) {
		/*
		 * Test offset + len against the filesystem's maxfilesize.
		 */
		FUNC0(vap);
		vap->va_size = offset + len;
		error = FUNC4(vp, vap, td->td_ucred);
		if (error != 0)
			goto out;
		FUNC0(vap);
		vap->va_size = fsize;
		error = FUNC4(vp, vap, td->td_ucred);
		if (error != 0)
			goto out;
	}

	for (;;) {
		/*
		 * Read and write back anything below the nominal file
		 * size.  There's currently no way outside the filesystem
		 * to know whether this area is sparse or not.
		 */
		cur = iosize;
		if ((offset % iosize) != 0)
			cur -= (offset % iosize);
		if (cur > len)
			cur = len;
		if (offset < fsize) {
			aiov.iov_base = buf;
			aiov.iov_len = cur;
			auio.uio_iov = &aiov;
			auio.uio_iovcnt = 1;
			auio.uio_offset = offset;
			auio.uio_resid = cur;
			auio.uio_segflg = UIO_SYSSPACE;
			auio.uio_rw = UIO_READ;
			auio.uio_td = td;
			error = FUNC3(vp, &auio, 0, td->td_ucred);
			if (error != 0)
				break;
			if (auio.uio_resid > 0) {
				FUNC6(buf + cur - auio.uio_resid,
				    auio.uio_resid);
			}
		} else {
			FUNC6(buf, cur);
		}

		aiov.iov_base = buf;
		aiov.iov_len = cur;
		auio.uio_iov = &aiov;
		auio.uio_iovcnt = 1;
		auio.uio_offset = offset;
		auio.uio_resid = cur;
		auio.uio_segflg = UIO_SYSSPACE;
		auio.uio_rw = UIO_WRITE;
		auio.uio_td = td;

		error = FUNC5(vp, &auio, 0, td->td_ucred);
		if (error != 0)
			break;

		len -= cur;
		offset += cur;
		if (len == 0)
			break;
		if (FUNC9())
			break;
	}

 out:
	*ap->a_len = len;
	*ap->a_offset = offset;
	FUNC7(buf, M_TEMP);
	return (error);
}
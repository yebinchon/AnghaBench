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
struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; scalar_t__ uio_offset; struct thread* uio_td; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_rw; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct iovec {int iov_len; char* iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int IO_NODELOCKED ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC1 (struct vnode*,int,char const*,struct uio*,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_WAIT ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int) ; 
 int FUNC5 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 

int
FUNC6(struct vnode *vp, int ioflg, int attrnamespace,
    const char *attrname, int buflen, char *buf, struct thread *td)
{
	struct uio	auio;
	struct iovec	iov;
	struct mount	*mp;
	int	error;

	iov.iov_len = buflen;
	iov.iov_base = buf;

	auio.uio_iov = &iov;
	auio.uio_iovcnt = 1;
	auio.uio_rw = UIO_WRITE;
	auio.uio_segflg = UIO_SYSSPACE;
	auio.uio_td = td;
	auio.uio_offset = 0;
	auio.uio_resid = buflen;

	if ((ioflg & IO_NODELOCKED) == 0) {
		if ((error = FUNC5(vp, &mp, V_WAIT)) != 0)
			return (error);
		FUNC4(vp, LK_EXCLUSIVE | LK_RETRY);
	}

	FUNC0(vp, "IO_NODELOCKED with no vp lock held");

	/* authorize attribute setting as kernel */
	error = FUNC1(vp, attrnamespace, attrname, &auio, NULL, td);

	if ((ioflg & IO_NODELOCKED) == 0) {
		FUNC3(mp);
		FUNC2(vp, 0);
	}

	return (error);
}
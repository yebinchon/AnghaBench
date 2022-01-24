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
struct uio {int uio_iovcnt; size_t uio_resid; struct thread* uio_td; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_rw; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct thread {size_t* td_retval; int /*<<< orphan*/  td_ucred; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t IOSIZE_MAX ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC0 (struct vnode*,int,char const*,struct uio*,size_t*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vnode*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC4(struct vnode *vp, int attrnamespace, const char *attrname,
    void *data, size_t nbytes, struct thread *td)
{
	struct uio auio, *auiop;
	struct iovec aiov;
	ssize_t cnt;
	size_t size, *sizep;
	int error;

	if (nbytes > IOSIZE_MAX)
		return (EINVAL);

	FUNC3(vp, LK_SHARED | LK_RETRY);

	/*
	 * Slightly unusual semantics: if the user provides a NULL data
	 * pointer, they don't want to receive the data, just the maximum
	 * read length.
	 */
	auiop = NULL;
	sizep = NULL;
	cnt = 0;
	if (data != NULL) {
		aiov.iov_base = data;
		aiov.iov_len = nbytes;
		auio.uio_iov = &aiov;
		auio.uio_iovcnt = 1;
		auio.uio_offset = 0;
		auio.uio_resid = nbytes;
		auio.uio_rw = UIO_READ;
		auio.uio_segflg = UIO_USERSPACE;
		auio.uio_td = td;
		auiop = &auio;
		cnt = nbytes;
	} else
		sizep = &size;

#ifdef MAC
	error = mac_vnode_check_getextattr(td->td_ucred, vp, attrnamespace,
	    attrname);
	if (error)
		goto done;
#endif

	error = FUNC0(vp, attrnamespace, attrname, auiop, sizep,
	    td->td_ucred, td);

	if (auiop != NULL) {
		cnt -= auio.uio_resid;
		td->td_retval[0] = cnt;
	} else
		td->td_retval[0] = size;
#ifdef MAC
done:
#endif
	FUNC1(vp, 0);
	return (error);
}
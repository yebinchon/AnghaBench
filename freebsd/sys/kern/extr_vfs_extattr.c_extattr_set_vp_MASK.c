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
struct mount {int dummy; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t IOSIZE_MAX ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int PCATCH ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC0 (struct vnode*,int,char const*,struct uio*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vnode*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int) ; 
 int FUNC5 (struct vnode*,struct mount**,int) ; 

__attribute__((used)) static int
FUNC6(struct vnode *vp, int attrnamespace, const char *attrname,
    void *data, size_t nbytes, struct thread *td)
{
	struct mount *mp;
	struct uio auio;
	struct iovec aiov;
	ssize_t cnt;
	int error;

	if (nbytes > IOSIZE_MAX)
		return (EINVAL);

	error = FUNC5(vp, &mp, V_WAIT | PCATCH);
	if (error)
		return (error);
	FUNC4(vp, LK_EXCLUSIVE | LK_RETRY);

	aiov.iov_base = data;
	aiov.iov_len = nbytes;
	auio.uio_iov = &aiov;
	auio.uio_iovcnt = 1;
	auio.uio_offset = 0;
	auio.uio_resid = nbytes;
	auio.uio_rw = UIO_WRITE;
	auio.uio_segflg = UIO_USERSPACE;
	auio.uio_td = td;
	cnt = nbytes;

#ifdef MAC
	error = mac_vnode_check_setextattr(td->td_ucred, vp, attrnamespace,
	    attrname);
	if (error)
		goto done;
#endif

	error = FUNC0(vp, attrnamespace, attrname, &auio,
	    td->td_ucred, td);
	cnt -= auio.uio_resid;
	td->td_retval[0] = cnt;

#ifdef MAC
done:
#endif
	FUNC1(vp, 0);
	FUNC3(mp);
	return (error);
}
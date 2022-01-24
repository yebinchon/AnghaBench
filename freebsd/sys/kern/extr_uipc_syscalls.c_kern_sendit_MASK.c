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
struct uio {int uio_iovcnt; int uio_segflg; scalar_t__ uio_resid; scalar_t__ uio_offset; struct thread* uio_td; int /*<<< orphan*/  uio_rw; struct iovec* uio_iov; } ;
struct thread {scalar_t__* td_retval; int /*<<< orphan*/  td_proc; int /*<<< orphan*/  td_ucred; } ;
struct socket {int so_options; } ;
struct msghdr {int msg_iovlen; int /*<<< orphan*/ * msg_name; struct iovec* msg_iov; } ;
struct mbuf {int dummy; } ;
struct iovec {scalar_t__ iov_len; } ;
struct file {scalar_t__ f_data; } ;
typedef  scalar_t__ ssize_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int EINTR ; 
 int EINVAL ; 
 int EPIPE ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 scalar_t__ FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_GENIO ; 
 int /*<<< orphan*/  KTR_STRUCT ; 
 int MSG_NOSIGNAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int SO_NOSIGPIPE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  cap_send_connect_rights ; 
 int /*<<< orphan*/  cap_send_rights ; 
 struct uio* FUNC5 (struct uio*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct thread*) ; 
 int FUNC7 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct socket*) ; 
 int FUNC13 (struct socket*,int /*<<< orphan*/ *,struct uio*,int /*<<< orphan*/ ,struct mbuf*,int,struct thread*) ; 
 int /*<<< orphan*/  FUNC14 (struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC15(struct thread *td, int s, struct msghdr *mp, int flags,
    struct mbuf *control, enum uio_seg segflg)
{
	struct file *fp;
	struct uio auio;
	struct iovec *iov;
	struct socket *so;
	cap_rights_t *rights;
#ifdef KTRACE
	struct uio *ktruio = NULL;
#endif
	ssize_t len;
	int i, error;

	FUNC0(s);
	rights = &cap_send_rights;
	if (mp->msg_name != NULL) {
		FUNC1(td, AT_FDCWD, mp->msg_name);
		rights = &cap_send_connect_rights;
	}
	error = FUNC7(td, s, rights, &fp, NULL, NULL);
	if (error != 0) {
		FUNC10(control);
		return (error);
	}
	so = (struct socket *)fp->f_data;

#ifdef KTRACE
	if (mp->msg_name != NULL && KTRPOINT(td, KTR_STRUCT))
		ktrsockaddr(mp->msg_name);
#endif
#ifdef MAC
	if (mp->msg_name != NULL) {
		error = mac_socket_check_connect(td->td_ucred, so,
		    mp->msg_name);
		if (error != 0) {
			m_freem(control);
			goto bad;
		}
	}
	error = mac_socket_check_send(td->td_ucred, so);
	if (error != 0) {
		m_freem(control);
		goto bad;
	}
#endif

	auio.uio_iov = mp->msg_iov;
	auio.uio_iovcnt = mp->msg_iovlen;
	auio.uio_segflg = segflg;
	auio.uio_rw = UIO_WRITE;
	auio.uio_td = td;
	auio.uio_offset = 0;			/* XXX */
	auio.uio_resid = 0;
	iov = mp->msg_iov;
	for (i = 0; i < mp->msg_iovlen; i++, iov++) {
		if ((auio.uio_resid += iov->iov_len) < 0) {
			error = EINVAL;
			FUNC10(control);
			goto bad;
		}
	}
#ifdef KTRACE
	if (KTRPOINT(td, KTR_GENIO))
		ktruio = cloneuio(&auio);
#endif
	len = auio.uio_resid;
	error = FUNC13(so, mp->msg_name, &auio, 0, control, flags, td);
	if (error != 0) {
		if (auio.uio_resid != len && (error == ERESTART ||
		    error == EINTR || error == EWOULDBLOCK))
			error = 0;
		/* Generation of SIGPIPE can be controlled per socket */
		if (error == EPIPE && !(so->so_options & SO_NOSIGPIPE) &&
		    !(flags & MSG_NOSIGNAL)) {
			FUNC3(td->td_proc);
			FUNC14(td, SIGPIPE);
			FUNC4(td->td_proc);
		}
	}
	if (error == 0)
		td->td_retval[0] = len - auio.uio_resid;
#ifdef KTRACE
	if (ktruio != NULL) {
		ktruio->uio_resid = td->td_retval[0];
		ktrgenio(s, UIO_WRITE, ktruio, error);
	}
#endif
bad:
	FUNC6(fp, td);
	return (error);
}
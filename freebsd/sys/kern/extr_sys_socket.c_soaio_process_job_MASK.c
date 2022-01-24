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
struct uio {int uio_iovcnt; size_t uio_resid; int /*<<< orphan*/  uio_rw; struct thread* uio_td; int /*<<< orphan*/  uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct TYPE_3__ {long ru_msgrcv; long ru_msgsnd; } ;
struct thread {struct ucred* td_ucred; TYPE_1__ td_ru; } ;
struct sockbuf {int /*<<< orphan*/  sb_aiojobq; } ;
struct socket {int so_options; int so_state; struct sockbuf so_rcv; } ;
struct TYPE_4__ {size_t aio_nbytes; scalar_t__ aio_buf; } ;
struct kaiocb {size_t aio_done; int msgrcv; int msgsnd; TYPE_2__ uaiocb; int /*<<< orphan*/  userproc; struct ucred* cred; struct file* fd_file; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct file {int /*<<< orphan*/  f_cred; } ;

/* Variables and functions */
 int EINTR ; 
 int EPIPE ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MSG_MORETOCOME ; 
 int MSG_NBIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockbuf*) ; 
 int SO_NOSIGPIPE ; 
 int SS_NBIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  FUNC7 (struct kaiocb*) ; 
 int /*<<< orphan*/  FUNC8 (struct kaiocb*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kaiocb*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  empty_results ; 
 int /*<<< orphan*/  empty_retries ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int FUNC12 (int /*<<< orphan*/ ,struct socket*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct socket*) ; 
 scalar_t__ FUNC14 (struct socket*,struct sockbuf*) ; 
 int /*<<< orphan*/  soo_aio_cancel ; 
 int FUNC15 (struct socket*,int /*<<< orphan*/ *,struct uio*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC16 (struct socket*,int /*<<< orphan*/ *,struct uio*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct thread*) ; 

__attribute__((used)) static void
FUNC17(struct socket *so, struct sockbuf *sb, struct kaiocb *job)
{
	struct ucred *td_savedcred;
	struct thread *td;
	struct file *fp;
	struct uio uio;
	struct iovec iov;
	size_t cnt, done;
	long ru_before;
	int error, flags;

	FUNC4(sb);
	FUNC10(job);
	td = curthread;
	fp = job->fd_file;
retry:
	td_savedcred = td->td_ucred;
	td->td_ucred = job->cred;

	done = job->aio_done;
	cnt = job->uaiocb.aio_nbytes - done;
	iov.iov_base = (void *)((uintptr_t)job->uaiocb.aio_buf + done);
	iov.iov_len = cnt;
	uio.uio_iov = &iov;
	uio.uio_iovcnt = 1;
	uio.uio_offset = 0;
	uio.uio_resid = cnt;
	uio.uio_segflg = UIO_USERSPACE;
	uio.uio_td = td;
	flags = MSG_NBIO;

	/*
	 * For resource usage accounting, only count a completed request
	 * as a single message to avoid counting multiple calls to
	 * sosend/soreceive on a blocking socket.
	 */

	if (sb == &so->so_rcv) {
		uio.uio_rw = UIO_READ;
		ru_before = td->td_ru.ru_msgrcv;
#ifdef MAC
		error = mac_socket_check_receive(fp->f_cred, so);
		if (error == 0)

#endif
			error = FUNC15(so, NULL, &uio, NULL, NULL, &flags);
		if (td->td_ru.ru_msgrcv != ru_before)
			job->msgrcv = 1;
	} else {
		if (!FUNC5(&sb->sb_aiojobq))
			flags |= MSG_MORETOCOME;
		uio.uio_rw = UIO_WRITE;
		ru_before = td->td_ru.ru_msgsnd;
#ifdef MAC
		error = mac_socket_check_send(fp->f_cred, so);
		if (error == 0)
#endif
			error = FUNC16(so, NULL, &uio, NULL, NULL, flags, td);
		if (td->td_ru.ru_msgsnd != ru_before)
			job->msgsnd = 1;
		if (error == EPIPE && (so->so_options & SO_NOSIGPIPE) == 0) {
			FUNC1(job->userproc);
			FUNC11(job->userproc, SIGPIPE);
			FUNC2(job->userproc);
		}
	}

	done += cnt - uio.uio_resid;
	job->aio_done = done;
	td->td_ucred = td_savedcred;

	if (error == EWOULDBLOCK) {
		/*
		 * The request was either partially completed or not
		 * completed at all due to racing with a read() or
		 * write() on the socket.  If the socket is
		 * non-blocking, return with any partial completion.
		 * If the socket is blocking or if no progress has
		 * been made, requeue this request at the head of the
		 * queue to try again when the socket is ready.
		 */
		FUNC0(done != job->uaiocb.aio_nbytes);
		FUNC3(sb);
		if (done == 0 || !(so->so_state & SS_NBIO)) {
			empty_results++;
			if (FUNC14(so, sb)) {
				empty_retries++;
				FUNC4(sb);
				goto retry;
			}
			
			if (!FUNC9(job, soo_aio_cancel)) {
				FUNC4(sb);
				if (done != 0)
					FUNC8(job, done, 0);
				else
					FUNC7(job);
				FUNC3(sb);
			} else {
				FUNC6(&sb->sb_aiojobq, job, list);
			}
			return;
		}
		FUNC4(sb);
	}		
	if (done != 0 && (error == ERESTART || error == EINTR ||
	    error == EWOULDBLOCK))
		error = 0;
	if (error)
		FUNC8(job, -1, error);
	else
		FUNC8(job, done, 0);
	FUNC3(sb);
}
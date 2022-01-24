#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
struct thread {int /*<<< orphan*/  td_ucred; struct proc* td_proc; } ;
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kevent {uintptr_t ident; int flags; intptr_t data; int /*<<< orphan*/  udata; int /*<<< orphan*/  filter; } ;
struct kaioinfo {scalar_t__ kaio_count; int /*<<< orphan*/  kaio_jobqueue; int /*<<< orphan*/  kaio_all; } ;
struct TYPE_8__ {int error; void* kernelinfo; } ;
struct TYPE_7__ {int /*<<< orphan*/  sival_ptr; } ;
struct TYPE_10__ {scalar_t__ sigev_notify; int sigev_notify_kevent_flags; int sigev_notify_kqueue; TYPE_1__ sigev_value; int /*<<< orphan*/  sigev_signo; } ;
struct TYPE_12__ {scalar_t__ aio_nbytes; int aio_lio_opcode; int aio_fildes; scalar_t__ aio_offset; TYPE_2__ _aiocb_private; TYPE_4__ aio_sigevent; } ;
struct kaiocb {int jobflags; int /*<<< orphan*/  klist; struct aioliojob* lio; int /*<<< orphan*/  cred; struct proc* userproc; TYPE_6__ uaiocb; struct aiocb* ujob; scalar_t__ seqno; struct file* fd_file; int /*<<< orphan*/  ksi; } ;
struct file {TYPE_3__* f_ops; TYPE_5__* f_vnode; } ;
struct aioliojob {int /*<<< orphan*/  lioj_count; } ;
struct aiocb_ops {int (* store_kernelinfo ) (struct aiocb*,int) ;int (* copyin ) (struct aiocb*,TYPE_6__*) ;int /*<<< orphan*/  (* store_error ) (struct aiocb*,int) ;int /*<<< orphan*/  (* store_status ) (struct aiocb*,int) ;} ;
struct aiocb {int dummy; } ;
typedef  int /*<<< orphan*/  kev ;
struct TYPE_11__ {scalar_t__ v_type; } ;
struct TYPE_9__ {int /*<<< orphan*/ * fo_aio_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct kaioinfo*) ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  EVFILT_AIO ; 
 int EV_ADD ; 
 int EV_CLEAR ; 
 int EV_DISPATCH ; 
 int EV_ENABLE ; 
 int EV_FLAG1 ; 
 int EV_ONESHOT ; 
 scalar_t__ IOSIZE_MAX ; 
 int KAIOCB_FINISHED ; 
 int KAIOCB_QUEUEING ; 
#define  LIO_MLOCK 132 
#define  LIO_NOP 131 
#define  LIO_READ 130 
#define  LIO_SYNC 129 
#define  LIO_WRITE 128 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ SIGEV_KEVENT ; 
 scalar_t__ SIGEV_NONE ; 
 scalar_t__ SIGEV_SIGNAL ; 
 scalar_t__ SIGEV_THREAD_ID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 scalar_t__ VCHR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,struct kaiocb*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  aio_job_mtx ; 
 int /*<<< orphan*/  aio_process_mlock ; 
 int FUNC7 (struct file*,struct kaiocb*) ; 
 int /*<<< orphan*/  FUNC8 (struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aiocb_zone ; 
 int /*<<< orphan*/  allist ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int) ; 
 int /*<<< orphan*/  cap_fsync_rights ; 
 int /*<<< orphan*/  cap_no_rights ; 
 int /*<<< orphan*/  cap_pread_rights ; 
 int /*<<< orphan*/  cap_pwrite_rights ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC11 (struct file*,struct thread*) ; 
 int FUNC12 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC13 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC14 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC15 (struct file*,struct kaiocb*) ; 
 int /*<<< orphan*/  jobrefid ; 
 int /*<<< orphan*/  jobseqno ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (int,struct kevent*,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ max_aio_queue_per_proc ; 
 scalar_t__ max_queue_count ; 
 int /*<<< orphan*/  FUNC20 (struct kevent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ num_queue_count ; 
 int /*<<< orphan*/  plist ; 
 int /*<<< orphan*/  FUNC23 (struct aiocb*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct aiocb*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct aiocb*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct aiocb*,int) ; 
 int FUNC27 (struct aiocb*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct aiocb*,int) ; 
 int FUNC29 (struct aiocb*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC30 (struct aiocb*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct aiocb*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct aiocb*,int) ; 
 int FUNC33 (struct aiocb*,int) ; 
 struct kaiocb* FUNC34 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,struct kaiocb*) ; 

int
FUNC36(struct thread *td, struct aiocb *ujob, struct aioliojob *lj,
    int type, struct aiocb_ops *ops)
{
	struct proc *p = td->td_proc;
	struct file *fp;
	struct kaiocb *job;
	struct kaioinfo *ki;
	struct kevent kev;
	int opcode;
	int error;
	int fd, kqfd;
	int jid;
	u_short evflags;

	if (p->p_aioinfo == NULL)
		FUNC6(p);

	ki = p->p_aioinfo;

	ops->store_status(ujob, -1);
	ops->store_error(ujob, 0);
	ops->store_kernelinfo(ujob, -1);

	if (num_queue_count >= max_queue_count ||
	    ki->kaio_count >= max_aio_queue_per_proc) {
		ops->store_error(ujob, EAGAIN);
		return (EAGAIN);
	}

	job = FUNC34(aiocb_zone, M_WAITOK | M_ZERO);
	FUNC17(&job->klist, FUNC1(ki));

	error = ops->copyin(ujob, &job->uaiocb);
	if (error) {
		ops->store_error(ujob, error);
		FUNC35(aiocb_zone, job);
		return (error);
	}

	if (job->uaiocb.aio_nbytes > IOSIZE_MAX) {
		FUNC35(aiocb_zone, job);
		return (EINVAL);
	}

	if (job->uaiocb.aio_sigevent.sigev_notify != SIGEV_KEVENT &&
	    job->uaiocb.aio_sigevent.sigev_notify != SIGEV_SIGNAL &&
	    job->uaiocb.aio_sigevent.sigev_notify != SIGEV_THREAD_ID &&
	    job->uaiocb.aio_sigevent.sigev_notify != SIGEV_NONE) {
		ops->store_error(ujob, EINVAL);
		FUNC35(aiocb_zone, job);
		return (EINVAL);
	}

	if ((job->uaiocb.aio_sigevent.sigev_notify == SIGEV_SIGNAL ||
	     job->uaiocb.aio_sigevent.sigev_notify == SIGEV_THREAD_ID) &&
		!FUNC4(job->uaiocb.aio_sigevent.sigev_signo)) {
		FUNC35(aiocb_zone, job);
		return (EINVAL);
	}

	FUNC19(&job->ksi);

	/* Save userspace address of the job info. */
	job->ujob = ujob;

	/* Get the opcode. */
	if (type != LIO_NOP)
		job->uaiocb.aio_lio_opcode = type;
	opcode = job->uaiocb.aio_lio_opcode;

	/*
	 * Validate the opcode and fetch the file object for the specified
	 * file descriptor.
	 *
	 * XXXRW: Moved the opcode validation up here so that we don't
	 * retrieve a file descriptor without knowing what the capabiltity
	 * should be.
	 */
	fd = job->uaiocb.aio_fildes;
	switch (opcode) {
	case LIO_WRITE:
		error = FUNC14(td, fd, &cap_pwrite_rights, &fp);
		break;
	case LIO_READ:
		error = FUNC13(td, fd, &cap_pread_rights, &fp);
		break;
	case LIO_SYNC:
		error = FUNC12(td, fd, &cap_fsync_rights, &fp);
		break;
	case LIO_MLOCK:
		fp = NULL;
		break;
	case LIO_NOP:
		error = FUNC12(td, fd, &cap_no_rights, &fp);
		break;
	default:
		error = EINVAL;
	}
	if (error) {
		FUNC35(aiocb_zone, job);
		ops->store_error(ujob, error);
		return (error);
	}

	if (opcode == LIO_SYNC && fp->f_vnode == NULL) {
		error = EINVAL;
		goto aqueue_fail;
	}

	if ((opcode == LIO_READ || opcode == LIO_WRITE) &&
	    job->uaiocb.aio_offset < 0 &&
	    (fp->f_vnode == NULL || fp->f_vnode->v_type != VCHR)) {
		error = EINVAL;
		goto aqueue_fail;
	}

	job->fd_file = fp;

	FUNC21(&aio_job_mtx);
	jid = jobrefid++;
	job->seqno = jobseqno++;
	FUNC22(&aio_job_mtx);
	error = ops->store_kernelinfo(ujob, jid);
	if (error) {
		error = EINVAL;
		goto aqueue_fail;
	}
	job->uaiocb._aiocb_private.kernelinfo = (void *)(intptr_t)jid;

	if (opcode == LIO_NOP) {
		FUNC11(fp, td);
		FUNC35(aiocb_zone, job);
		return (0);
	}

	if (job->uaiocb.aio_sigevent.sigev_notify != SIGEV_KEVENT)
		goto no_kqueue;
	evflags = job->uaiocb.aio_sigevent.sigev_notify_kevent_flags;
	if ((evflags & ~(EV_CLEAR | EV_DISPATCH | EV_ONESHOT)) != 0) {
		error = EINVAL;
		goto aqueue_fail;
	}
	kqfd = job->uaiocb.aio_sigevent.sigev_notify_kqueue;
	FUNC20(&kev, 0, sizeof(kev));
	kev.ident = (uintptr_t)job->ujob;
	kev.filter = EVFILT_AIO;
	kev.flags = EV_ADD | EV_ENABLE | EV_FLAG1 | evflags;
	kev.data = (intptr_t)job;
	kev.udata = job->uaiocb.aio_sigevent.sigev_value.sival_ptr;
	error = FUNC18(kqfd, &kev, td, M_WAITOK);
	if (error)
		goto aqueue_fail;

no_kqueue:

	ops->store_error(ujob, EINPROGRESS);
	job->uaiocb._aiocb_private.error = EINPROGRESS;
	job->userproc = p;
	job->cred = FUNC10(td->td_ucred);
	job->jobflags = KAIOCB_QUEUEING;
	job->lio = lj;

	if (opcode == LIO_MLOCK) {
		FUNC8(job, aio_process_mlock);
		error = 0;
	} else if (fp->f_ops->fo_aio_queue == NULL)
		error = FUNC7(fp, job);
	else
		error = FUNC15(fp, job);
	if (error)
		goto aqueue_fail;

	FUNC0(ki);
	job->jobflags &= ~KAIOCB_QUEUEING;
	FUNC3(&ki->kaio_all, job, allist);
	ki->kaio_count++;
	if (lj)
		lj->lioj_count++;
	FUNC9(&num_queue_count, 1);
	if (job->jobflags & KAIOCB_FINISHED) {
		/*
		 * The queue callback completed the request synchronously.
		 * The bulk of the completion is deferred in that case
		 * until this point.
		 */
		FUNC5(p, job);
	} else
		FUNC3(&ki->kaio_jobqueue, job, plist);
	FUNC2(ki);
	return (0);

aqueue_fail:
	FUNC16(&job->klist, curthread, 0);
	if (fp)
		FUNC11(fp, td);
	FUNC35(aiocb_zone, job);
	ops->store_error(ujob, error);
	return (error);
}
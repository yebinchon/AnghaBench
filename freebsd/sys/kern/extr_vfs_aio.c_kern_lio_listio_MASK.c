#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {struct proc* td_proc; } ;
struct sigevent {int dummy; } ;
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kevent {int flags; uintptr_t ident; intptr_t data; int /*<<< orphan*/  udata; int /*<<< orphan*/  filter; } ;
struct kaioinfo {int /*<<< orphan*/  kaio_liojoblist; int /*<<< orphan*/  kaio_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  sival_ptr; } ;
struct TYPE_5__ {scalar_t__ sigev_notify; int /*<<< orphan*/  sigev_signo; int /*<<< orphan*/  sigev_notify_kqueue; TYPE_1__ sigev_value; } ;
struct aioliojob {int lioj_flags; int lioj_count; int lioj_finished_count; int /*<<< orphan*/  lioj_ksi; int /*<<< orphan*/  klist; TYPE_2__ lioj_signal; } ;
struct aiocb_ops {int dummy; } ;
struct aiocb {int dummy; } ;
typedef  int /*<<< orphan*/  kev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct kaioinfo*) ; 
 int EAGAIN ; 
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 int ERESTART ; 
 int /*<<< orphan*/  EVFILT_LIO ; 
 int EV_ADD ; 
 int EV_ENABLE ; 
 int EV_FLAG1 ; 
 int /*<<< orphan*/  KAIO_WAKEUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int LIOJ_KEVENT_POSTED ; 
 int LIOJ_SIGNAL ; 
 int LIOJ_SIGNAL_POSTED ; 
 int /*<<< orphan*/  LIO_NOP ; 
 int LIO_NOWAIT ; 
 int LIO_WAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PCATCH ; 
 int PRIBIO ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 scalar_t__ SIGEV_KEVENT ; 
 scalar_t__ SIGEV_NONE ; 
 scalar_t__ SIGEV_SIGNAL ; 
 scalar_t__ SIGEV_THREAD_ID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct aioliojob*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct aioliojob*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct thread*,struct aiocb*,struct aioliojob*,int /*<<< orphan*/ ,struct aiocb_ops*) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aiolio_zone ; 
 int /*<<< orphan*/  FUNC12 (struct sigevent*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct kevent*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lioj_list ; 
 int max_aio_queue_per_proc ; 
 int /*<<< orphan*/  FUNC17 (struct kevent*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct kaioinfo**,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct aioliojob* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct aioliojob*) ; 

__attribute__((used)) static int
FUNC22(struct thread *td, int mode, struct aiocb * const *uacb_list,
    struct aiocb **acb_list, int nent, struct sigevent *sig,
    struct aiocb_ops *ops)
{
	struct proc *p = td->td_proc;
	struct aiocb *job;
	struct kaioinfo *ki;
	struct aioliojob *lj;
	struct kevent kev;
	int error;
	int nagain, nerror;
	int i;

	if ((mode != LIO_NOWAIT) && (mode != LIO_WAIT))
		return (EINVAL);

	if (nent < 0 || nent > max_aio_queue_per_proc)
		return (EINVAL);

	if (p->p_aioinfo == NULL)
		FUNC10(p);

	ki = p->p_aioinfo;

	lj = FUNC20(aiolio_zone, M_WAITOK);
	lj->lioj_flags = 0;
	lj->lioj_count = 0;
	lj->lioj_finished_count = 0;
	FUNC14(&lj->klist, FUNC1(ki));
	FUNC16(&lj->lioj_ksi);

	/*
	 * Setup signal.
	 */
	if (sig && (mode == LIO_NOWAIT)) {
		FUNC12(sig, &lj->lioj_signal, sizeof(lj->lioj_signal));
		if (lj->lioj_signal.sigev_notify == SIGEV_KEVENT) {
			/* Assume only new style KEVENT */
			FUNC17(&kev, 0, sizeof(kev));
			kev.filter = EVFILT_LIO;
			kev.flags = EV_ADD | EV_ENABLE | EV_FLAG1;
			kev.ident = (uintptr_t)uacb_list; /* something unique */
			kev.data = (intptr_t)lj;
			/* pass user defined sigval data */
			kev.udata = lj->lioj_signal.sigev_value.sival_ptr;
			error = FUNC15(
			    lj->lioj_signal.sigev_notify_kqueue, &kev, td,
			    M_WAITOK);
			if (error) {
				FUNC21(aiolio_zone, lj);
				return (error);
			}
		} else if (lj->lioj_signal.sigev_notify == SIGEV_NONE) {
			;
		} else if (lj->lioj_signal.sigev_notify == SIGEV_SIGNAL ||
			   lj->lioj_signal.sigev_notify == SIGEV_THREAD_ID) {
				if (!FUNC8(lj->lioj_signal.sigev_signo)) {
					FUNC21(aiolio_zone, lj);
					return EINVAL;
				}
				lj->lioj_flags |= LIOJ_SIGNAL;
		} else {
			FUNC21(aiolio_zone, lj);
			return EINVAL;
		}
	}

	FUNC0(ki);
	FUNC6(&ki->kaio_liojoblist, lj, lioj_list);
	/*
	 * Add extra aiocb count to avoid the lio to be freed
	 * by other threads doing aio_waitcomplete or aio_return,
	 * and prevent event from being sent until we have queued
	 * all tasks.
	 */
	lj->lioj_count = 1;
	FUNC2(ki);

	/*
	 * Get pointers to the list of I/O requests.
	 */
	nagain = 0;
	nerror = 0;
	for (i = 0; i < nent; i++) {
		job = acb_list[i];
		if (job != NULL) {
			error = FUNC9(td, job, lj, LIO_NOP, ops);
			if (error == EAGAIN)
				nagain++;
			else if (error != 0)
				nerror++;
		}
	}

	error = 0;
	FUNC0(ki);
	if (mode == LIO_WAIT) {
		while (lj->lioj_count - 1 != lj->lioj_finished_count) {
			ki->kaio_flags |= KAIO_WAKEUP;
			error = FUNC18(&p->p_aioinfo, FUNC1(ki),
			    PRIBIO | PCATCH, "aiospn", 0);
			if (error == ERESTART)
				error = EINTR;
			if (error)
				break;
		}
	} else {
		if (lj->lioj_count - 1 == lj->lioj_finished_count) {
			if (lj->lioj_signal.sigev_notify == SIGEV_KEVENT) {
				lj->lioj_flags |= LIOJ_KEVENT_POSTED;
				FUNC3(&lj->klist, 1);
			}
			if ((lj->lioj_flags & (LIOJ_SIGNAL|LIOJ_SIGNAL_POSTED))
			    == LIOJ_SIGNAL
			    && (lj->lioj_signal.sigev_notify == SIGEV_SIGNAL ||
			    lj->lioj_signal.sigev_notify == SIGEV_THREAD_ID)) {
				FUNC11(p, &lj->lioj_signal,
					    &lj->lioj_ksi);
				lj->lioj_flags |= LIOJ_SIGNAL_POSTED;
			}
		}
	}
	lj->lioj_count--;
	if (lj->lioj_count == 0) {
		FUNC7(&ki->kaio_liojoblist, lj, lioj_list);
		FUNC13(&lj->klist, curthread, 1);
		FUNC4(p);
		FUNC19(&lj->lioj_ksi);
		FUNC5(p);
		FUNC2(ki);
		FUNC21(aiolio_zone, lj);
	} else
		FUNC2(ki);

	if (nerror)
		return (EIO);
	else if (nagain)
		return (EAGAIN);
	else
		return (error);
}
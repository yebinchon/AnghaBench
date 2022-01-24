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
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct thread {int* td_retval; } ;
struct kqueue {scalar_t__ kq_count; int /*<<< orphan*/  kq_head; int /*<<< orphan*/  kq_lock; int /*<<< orphan*/  kq_state; } ;
struct kevent {int dummy; } ;
struct knote {int kn_status; int kn_flags; scalar_t__ kn_fflags; scalar_t__ kn_data; struct kevent kn_kevent; TYPE_1__* kn_fop; } ;
struct knlist {int dummy; } ;
struct kevent_copyops {int (* k_copyout ) (int /*<<< orphan*/ ,struct kevent*,int) ;int /*<<< orphan*/  arg; } ;
typedef  int sbintime_t ;
struct TYPE_2__ {scalar_t__ (* f_event ) (struct knote*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* f_touch ) (struct knote*,struct kevent*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  f_isfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_ABSOLUTE ; 
 int EINTR ; 
 int EINVAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  EVENT_PROCESS ; 
 int EV_CLEAR ; 
 int EV_DISPATCH ; 
 int EV_DROP ; 
 int EV_ONESHOT ; 
 int EWOULDBLOCK ; 
 scalar_t__ INT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KN_ACTIVE ; 
 int KN_DISABLED ; 
 int KN_KQUEUE ; 
 int KN_MARKER ; 
 int KN_QUEUED ; 
 int KN_SCAN ; 
 int /*<<< orphan*/  KQ_FLUXWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kqueue*) ; 
 int KQ_NEVENTS ; 
 int /*<<< orphan*/  FUNC5 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*) ; 
 int /*<<< orphan*/  KQ_SLEEP ; 
 int /*<<< orphan*/  FUNC7 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC8 (struct kqueue*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PCATCH ; 
 int PSOCK ; 
 int SBT_MAX ; 
 struct knote* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct knote*) ; 
 scalar_t__ FUNC14 (struct knote*) ; 
 int /*<<< orphan*/  FUNC15 (struct knote*) ; 
 struct knlist* FUNC16 (struct knote*) ; 
 int /*<<< orphan*/  FUNC17 (struct knlist*) ; 
 int /*<<< orphan*/  kn_tqe ; 
 struct knote* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct knote*,struct thread*) ; 
 int /*<<< orphan*/  FUNC20 (struct knote*) ; 
 int /*<<< orphan*/  kq_global ; 
 int FUNC21 (struct kqueue*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct kqueue*,int /*<<< orphan*/ *,int,char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct knote*,struct kevent*,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,struct kevent*,int) ; 
 int FUNC26 (int /*<<< orphan*/ ,struct kevent*,int) ; 
 int tc_precexp ; 
 scalar_t__ tc_tick_sbt ; 
 scalar_t__ FUNC27 (struct timespec const*) ; 
 int FUNC28 (struct timespec const) ; 

__attribute__((used)) static int
FUNC29(struct kqueue *kq, int maxevents, struct kevent_copyops *k_ops,
    const struct timespec *tsp, struct kevent *keva, struct thread *td)
{
	struct kevent *kevp;
	struct knote *kn, *marker;
	struct knlist *knl;
	sbintime_t asbt, rsbt;
	int count, error, haskqglobal, influx, nkev, touch;

	count = maxevents;
	nkev = 0;
	error = 0;
	haskqglobal = 0;

	if (maxevents == 0)
		goto done_nl;

	rsbt = 0;
	if (tsp != NULL) {
		if (tsp->tv_sec < 0 || tsp->tv_nsec < 0 ||
		    tsp->tv_nsec >= 1000000000) {
			error = EINVAL;
			goto done_nl;
		}
		if (FUNC27(tsp)) {
			if (tsp->tv_sec <= INT32_MAX) {
				rsbt = FUNC28(*tsp);
				if (FUNC12(&asbt, rsbt))
					asbt += tc_tick_sbt;
				if (asbt <= SBT_MAX - rsbt)
					asbt += rsbt;
				else
					asbt = 0;
				rsbt >>= tc_precexp;
			} else
				asbt = 0;
		} else
			asbt = -1;
	} else
		asbt = 0;
	marker = FUNC18(M_WAITOK);
	marker->kn_status = KN_MARKER;
	FUNC4(kq);

retry:
	kevp = keva;
	if (kq->kq_count == 0) {
		if (asbt == -1) {
			error = EWOULDBLOCK;
		} else {
			kq->kq_state |= KQ_SLEEP;
			error = FUNC22(kq, &kq->kq_lock, PSOCK | PCATCH,
			    "kqread", asbt, rsbt, C_ABSOLUTE);
		}
		if (error == 0)
			goto retry;
		/* don't restart after signals... */
		if (error == ERESTART)
			error = EINTR;
		else if (error == EWOULDBLOCK)
			error = 0;
		goto done;
	}

	FUNC10(&kq->kq_head, marker, kn_tqe);
	influx = 0;
	while (count) {
		FUNC6(kq);
		kn = FUNC9(&kq->kq_head);

		if ((kn->kn_status == KN_MARKER && kn != marker) ||
		    FUNC14(kn)) {
			if (influx) {
				influx = 0;
				FUNC1(kq);
			}
			kq->kq_state |= KQ_FLUXWAIT;
			error = FUNC21(kq, &kq->kq_lock, PSOCK,
			    "kqflxwt", 0);
			continue;
		}

		FUNC11(&kq->kq_head, kn, kn_tqe);
		if ((kn->kn_status & KN_DISABLED) == KN_DISABLED) {
			kn->kn_status &= ~KN_QUEUED;
			kq->kq_count--;
			continue;
		}
		if (kn == marker) {
			FUNC1(kq);
			if (count == maxevents)
				goto retry;
			goto done;
		}
		FUNC0(!FUNC14(kn),
		    ("knote %p is unexpectedly in flux", kn));

		if ((kn->kn_flags & EV_DROP) == EV_DROP) {
			kn->kn_status &= ~KN_QUEUED;
			FUNC13(kn);
			kq->kq_count--;
			FUNC7(kq);
			/*
			 * We don't need to lock the list since we've
			 * marked it as in flux.
			 */
			FUNC19(kn, td);
			FUNC4(kq);
			continue;
		} else if ((kn->kn_flags & EV_ONESHOT) == EV_ONESHOT) {
			kn->kn_status &= ~KN_QUEUED;
			FUNC13(kn);
			kq->kq_count--;
			FUNC7(kq);
			/*
			 * We don't need to lock the list since we've
			 * marked the knote as being in flux.
			 */
			*kevp = kn->kn_kevent;
			FUNC19(kn, td);
			FUNC4(kq);
			kn = NULL;
		} else {
			kn->kn_status |= KN_SCAN;
			FUNC13(kn);
			FUNC7(kq);
			if ((kn->kn_status & KN_KQUEUE) == KN_KQUEUE)
				FUNC2(&kq_global, haskqglobal);
			knl = FUNC16(kn);
			if (kn->kn_fop->f_event(kn, 0) == 0) {
				FUNC4(kq);
				FUNC3(&kq_global, haskqglobal);
				kn->kn_status &= ~(KN_QUEUED | KN_ACTIVE |
				    KN_SCAN);
				FUNC15(kn);
				kq->kq_count--;
				FUNC17(knl);
				influx = 1;
				continue;
			}
			touch = (!kn->kn_fop->f_isfd &&
			    kn->kn_fop->f_touch != NULL);
			if (touch)
				kn->kn_fop->f_touch(kn, kevp, EVENT_PROCESS);
			else
				*kevp = kn->kn_kevent;
			FUNC4(kq);
			FUNC3(&kq_global, haskqglobal);
			if (kn->kn_flags & (EV_CLEAR | EV_DISPATCH)) {
				/* 
				 * Manually clear knotes who weren't 
				 * 'touch'ed.
				 */
				if (touch == 0 && kn->kn_flags & EV_CLEAR) {
					kn->kn_data = 0;
					kn->kn_fflags = 0;
				}
				if (kn->kn_flags & EV_DISPATCH)
					kn->kn_status |= KN_DISABLED;
				kn->kn_status &= ~(KN_QUEUED | KN_ACTIVE);
				kq->kq_count--;
			} else
				FUNC10(&kq->kq_head, kn, kn_tqe);
			
			kn->kn_status &= ~KN_SCAN;
			FUNC15(kn);
			FUNC17(knl);
			influx = 1;
		}

		/* we are returning a copy to the user */
		kevp++;
		nkev++;
		count--;

		if (nkev == KQ_NEVENTS) {
			influx = 0;
			FUNC8(kq);
			error = k_ops->k_copyout(k_ops->arg, keva, nkev);
			nkev = 0;
			kevp = keva;
			FUNC4(kq);
			if (error)
				break;
		}
	}
	FUNC11(&kq->kq_head, marker, kn_tqe);
done:
	FUNC6(kq);
	FUNC8(kq);
	FUNC20(marker);
done_nl:
	FUNC5(kq);
	if (nkev != 0)
		error = k_ops->k_copyout(k_ops->arg, keva, nkev);
	td->td_retval[0] = maxevents - count;
	return (error);
}
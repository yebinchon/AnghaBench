#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {struct proc* td_proc; } ;
struct TYPE_8__ {int sival_int; } ;
struct sigevent {scalar_t__ sigev_notify; TYPE_3__ sigev_value; int /*<<< orphan*/  sigev_signo; } ;
struct proc {TYPE_2__* p_itimers; } ;
struct TYPE_10__ {int ksi_flags; int ksi_timerid; TYPE_3__ ksi_value; int /*<<< orphan*/  ksi_code; int /*<<< orphan*/  ksi_signo; } ;
struct TYPE_6__ {int /*<<< orphan*/  it_interval; int /*<<< orphan*/  it_value; } ;
struct itimer {size_t it_clockid; int it_timerid; TYPE_5__ it_ksi; struct sigevent it_sigev; struct proc* it_proc; scalar_t__ it_overrun_last; scalar_t__ it_overrun; TYPE_1__ it_time; scalar_t__ it_active; scalar_t__ it_usecount; scalar_t__ it_flags; } ;
typedef  size_t clockid_t ;
struct TYPE_9__ {int /*<<< orphan*/ * timer_create; } ;
struct TYPE_7__ {struct itimer** its_timers; } ;

/* Variables and functions */
 int FUNC0 (size_t,int /*<<< orphan*/ ,struct itimer*) ; 
#define  CLOCK_PROF 130 
#define  CLOCK_REALTIME 129 
#define  CLOCK_VIRTUAL 128 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct itimer*) ; 
 int /*<<< orphan*/  FUNC2 (struct itimer*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int KSI_EXT ; 
 int KSI_INS ; 
 size_t MAX_CLOCKS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ SIGEV_NONE ; 
 scalar_t__ SIGEV_SIGNAL ; 
 scalar_t__ SIGEV_THREAD_ID ; 
 int /*<<< orphan*/  SIGPROF ; 
 int /*<<< orphan*/  SIGVTALRM ; 
 int /*<<< orphan*/  SI_TIMER ; 
 int TIMER_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  itimer_zone ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 TYPE_4__* posix_clocks ; 
 int /*<<< orphan*/  timer_create ; 
 int /*<<< orphan*/  timer_delete ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct itimer* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct itimer*) ; 

int
FUNC12(struct thread *td, clockid_t clock_id, struct sigevent *evp,
    int *timerid, int preset_id)
{
	struct proc *p = td->td_proc;
	struct itimer *it;
	int id;
	int error;

	if (clock_id < 0 || clock_id >= MAX_CLOCKS)
		return (EINVAL);

	if (posix_clocks[clock_id].timer_create == NULL)
		return (EINVAL);

	if (evp != NULL) {
		if (evp->sigev_notify != SIGEV_NONE &&
		    evp->sigev_notify != SIGEV_SIGNAL &&
		    evp->sigev_notify != SIGEV_THREAD_ID)
			return (EINVAL);
		if ((evp->sigev_notify == SIGEV_SIGNAL ||
		     evp->sigev_notify == SIGEV_THREAD_ID) &&
			!FUNC6(evp->sigev_signo))
			return (EINVAL);
	}
	
	if (p->p_itimers == NULL)
		FUNC7(p);
	
	it = FUNC10(itimer_zone, M_WAITOK);
	it->it_flags = 0;
	it->it_usecount = 0;
	it->it_active = 0;
	FUNC9(&it->it_time.it_value);
	FUNC9(&it->it_time.it_interval);
	it->it_overrun = 0;
	it->it_overrun_last = 0;
	it->it_clockid = clock_id;
	it->it_timerid = -1;
	it->it_proc = p;
	FUNC8(&it->it_ksi);
	it->it_ksi.ksi_flags |= KSI_INS | KSI_EXT;
	error = FUNC0(clock_id, timer_create, (it));
	if (error != 0)
		goto out;

	FUNC4(p);
	if (preset_id != -1) {
		FUNC3(preset_id >= 0 && preset_id < 3, ("invalid preset_id"));
		id = preset_id;
		if (p->p_itimers->its_timers[id] != NULL) {
			FUNC5(p);
			error = 0;
			goto out;
		}
	} else {
		/*
		 * Find a free timer slot, skipping those reserved
		 * for setitimer().
		 */
		for (id = 3; id < TIMER_MAX; id++)
			if (p->p_itimers->its_timers[id] == NULL)
				break;
		if (id == TIMER_MAX) {
			FUNC5(p);
			error = EAGAIN;
			goto out;
		}
	}
	it->it_timerid = id;
	p->p_itimers->its_timers[id] = it;
	if (evp != NULL)
		it->it_sigev = *evp;
	else {
		it->it_sigev.sigev_notify = SIGEV_SIGNAL;
		switch (clock_id) {
		default:
		case CLOCK_REALTIME:
			it->it_sigev.sigev_signo = SIGALRM;
			break;
		case CLOCK_VIRTUAL:
 			it->it_sigev.sigev_signo = SIGVTALRM;
			break;
		case CLOCK_PROF:
			it->it_sigev.sigev_signo = SIGPROF;
			break;
		}
		it->it_sigev.sigev_value.sival_int = id;
	}

	if (it->it_sigev.sigev_notify == SIGEV_SIGNAL ||
	    it->it_sigev.sigev_notify == SIGEV_THREAD_ID) {
		it->it_ksi.ksi_signo = it->it_sigev.sigev_signo;
		it->it_ksi.ksi_code = SI_TIMER;
		it->it_ksi.ksi_value = it->it_sigev.sigev_value;
		it->it_ksi.ksi_timerid = id;
	}
	FUNC5(p);
	*timerid = id;
	return (0);

out:
	FUNC1(it);
	FUNC0(it->it_clockid, timer_delete, (it));
	FUNC2(it);
	FUNC11(itimer_zone, it);
	return (error);
}
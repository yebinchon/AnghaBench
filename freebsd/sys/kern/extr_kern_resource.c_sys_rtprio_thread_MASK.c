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
struct thread {scalar_t__ td_tid; struct proc* td_proc; } ;
struct rtprio_thread_args {int function; scalar_t__ lwpid; int /*<<< orphan*/  rtp; } ;
struct rtprio {int /*<<< orphan*/  type; } ;
struct proc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  PRIV_SCHED_RTPRIO ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
#define  RTP_LOOKUP 129 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTP_PRIO_IDLE ; 
 int /*<<< orphan*/  RTP_PRIO_REALTIME ; 
#define  RTP_SET 128 
 int FUNC3 (int /*<<< orphan*/ ,struct rtprio*,int) ; 
 int FUNC4 (struct rtprio*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* curproc ; 
 int FUNC5 (struct thread*,struct proc*) ; 
 int FUNC6 (struct thread*,struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,struct rtprio*) ; 
 int FUNC8 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct rtprio*,struct thread*) ; 
 struct thread* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unprivileged_idprio ; 

int
FUNC11(struct thread *td, struct rtprio_thread_args *uap)
{
	struct proc *p;
	struct rtprio rtp;
	struct thread *td1;
	int cierror, error;

	/* Perform copyin before acquiring locks if needed. */
	if (uap->function == RTP_SET)
		cierror = FUNC3(uap->rtp, &rtp, sizeof(struct rtprio));
	else
		cierror = 0;

	if (uap->lwpid == 0 || uap->lwpid == td->td_tid) {
		p = td->td_proc;
		td1 = td;
		FUNC0(p);
	} else {
		/* Only look up thread in current process */
		td1 = FUNC10(uap->lwpid, curproc->p_pid);
		if (td1 == NULL)
			return (ESRCH);
		p = td1->td_proc;
	}

	switch (uap->function) {
	case RTP_LOOKUP:
		if ((error = FUNC6(td, p)))
			break;
		FUNC7(td1, &rtp);
		FUNC1(p);
		return (FUNC4(&rtp, uap->rtp, sizeof(struct rtprio)));
	case RTP_SET:
		if ((error = FUNC5(td, p)) || (error = cierror))
			break;

		/* Disallow setting rtprio in most cases if not superuser. */

		/*
		 * Realtime priority has to be restricted for reasons which
		 * should be obvious.  However, for idleprio processes, there is
		 * a potential for system deadlock if an idleprio process gains
		 * a lock on a resource that other processes need (and the
		 * idleprio process can't run due to a CPU-bound normal
		 * process).  Fix me!  XXX
		 *
		 * This problem is not only related to idleprio process.
		 * A user level program can obtain a file lock and hold it
		 * indefinitely.  Additionally, without idleprio processes it is
		 * still conceivable that a program with low priority will never
		 * get to run.  In short, allowing this feature might make it
		 * easier to lock a resource indefinitely, but it is not the
		 * only thing that makes it possible.
		 */
		if (FUNC2(rtp.type) == RTP_PRIO_REALTIME ||
		    (FUNC2(rtp.type) == RTP_PRIO_IDLE &&
		    unprivileged_idprio == 0)) {
			error = FUNC8(td, PRIV_SCHED_RTPRIO);
			if (error)
				break;
		}
		error = FUNC9(&rtp, td1);
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC1(p);
	return (error);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct TYPE_6__ {int /*<<< orphan*/  ru_msgrcv; int /*<<< orphan*/  ru_msgsnd; int /*<<< orphan*/  ru_inblock; int /*<<< orphan*/  ru_oublock; } ;
struct thread {long* td_retval; TYPE_3__ td_ru; struct proc* td_proc; } ;
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {int /*<<< orphan*/  kaio_flags; int /*<<< orphan*/  kaio_done; } ;
struct TYPE_4__ {long status; long error; } ;
struct TYPE_5__ {TYPE_1__ _aiocb_private; } ;
struct kaiocb {int jobflags; scalar_t__ msgrcv; scalar_t__ msgsnd; scalar_t__ inblock; scalar_t__ outblock; TYPE_2__ uaiocb; struct aiocb* ujob; } ;
struct aiocb_ops {int /*<<< orphan*/  (* store_status ) (struct aiocb*,long) ;int /*<<< orphan*/  (* store_error ) (struct aiocb*,long) ;int /*<<< orphan*/  (* store_aiocb ) (struct aiocb**,struct aiocb*) ;} ;
struct aiocb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct kaioinfo*) ; 
 long EINTR ; 
 int EINVAL ; 
 long ERESTART ; 
 long EWOULDBLOCK ; 
 int KAIOCB_FINISHED ; 
 int /*<<< orphan*/  KAIO_WAKEUP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PCATCH ; 
 int PRIBIO ; 
 struct kaiocb* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC6 (struct kaiocb*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 scalar_t__ FUNC8 (struct timeval*) ; 
 long FUNC9 (struct kaioinfo**,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct aiocb**,struct aiocb*) ; 
 int /*<<< orphan*/  FUNC11 (struct aiocb**,struct aiocb*) ; 
 int /*<<< orphan*/  FUNC12 (struct aiocb*,long) ; 
 int /*<<< orphan*/  FUNC13 (struct aiocb*,long) ; 
 int FUNC14 (struct timeval*) ; 

__attribute__((used)) static int
FUNC15(struct thread *td, struct aiocb **ujobp,
    struct timespec *ts, struct aiocb_ops *ops)
{
	struct proc *p = td->td_proc;
	struct timeval atv;
	struct kaioinfo *ki;
	struct kaiocb *job;
	struct aiocb *ujob;
	long error, status;
	int timo;

	ops->store_aiocb(ujobp, NULL);

	if (ts == NULL) {
		timo = 0;
	} else if (ts->tv_sec == 0 && ts->tv_nsec == 0) {
		timo = -1;
	} else {
		if ((ts->tv_nsec < 0) || (ts->tv_nsec >= 1000000000))
			return (EINVAL);

		FUNC5(&atv, ts);
		if (FUNC8(&atv))
			return (EINVAL);
		timo = FUNC14(&atv);
	}

	if (p->p_aioinfo == NULL)
		FUNC7(p);
	ki = p->p_aioinfo;

	error = 0;
	job = NULL;
	FUNC0(ki);
	while ((job = FUNC4(&ki->kaio_done)) == NULL) {
		if (timo == -1) {
			error = EWOULDBLOCK;
			break;
		}
		ki->kaio_flags |= KAIO_WAKEUP;
		error = FUNC9(&p->p_aioinfo, FUNC1(ki), PRIBIO | PCATCH,
		    "aiowc", timo);
		if (timo && error == ERESTART)
			error = EINTR;
		if (error)
			break;
	}

	if (job != NULL) {
		FUNC3(job->jobflags & KAIOCB_FINISHED);
		ujob = job->ujob;
		status = job->uaiocb._aiocb_private.status;
		error = job->uaiocb._aiocb_private.error;
		td->td_retval[0] = status;
		td->td_ru.ru_oublock += job->outblock;
		td->td_ru.ru_inblock += job->inblock;
		td->td_ru.ru_msgsnd += job->msgsnd;
		td->td_ru.ru_msgrcv += job->msgrcv;
		FUNC6(job);
		FUNC2(ki);
		ops->store_aiocb(ujobp, ujob);
		ops->store_error(ujob, error);
		ops->store_status(ujob, status);
	} else
		FUNC2(ki);

	return (error);
}
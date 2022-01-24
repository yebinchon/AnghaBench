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
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {int /*<<< orphan*/  kaio_jobqueue; } ;
struct TYPE_3__ {int error; long status; } ;
struct TYPE_4__ {TYPE_1__ _aiocb_private; } ;
struct kaiocb {int jobflags; struct proc* userproc; TYPE_2__ uaiocb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaioinfo*) ; 
 int KAIOCB_CANCELLING ; 
 int KAIOCB_FINISHED ; 
 int KAIOCB_QUEUEING ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,struct kaiocb*) ; 
 int /*<<< orphan*/  plist ; 

void
FUNC5(struct kaiocb *job, long status, int error)
{
	struct kaioinfo *ki;
	struct proc *userp;

	job->uaiocb._aiocb_private.error = error;
	job->uaiocb._aiocb_private.status = status;

	userp = job->userproc;
	ki = userp->p_aioinfo;

	FUNC0(ki);
	FUNC2(!(job->jobflags & KAIOCB_FINISHED),
	    ("duplicate aio_complete"));
	job->jobflags |= KAIOCB_FINISHED;
	if ((job->jobflags & (KAIOCB_QUEUEING | KAIOCB_CANCELLING)) == 0) {
		FUNC3(&ki->kaio_jobqueue, job, plist);
		FUNC4(userp, job);
	}
	FUNC1(ki);
}
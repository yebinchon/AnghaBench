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
struct thread {int dummy; } ;
struct sigevent {scalar_t__ sigev_notify; int /*<<< orphan*/  sigev_notify_thread_id; } ;
struct proc {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 scalar_t__ SIGEV_THREAD_ID ; 
 struct thread* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct proc *p ,struct sigevent *sigev, struct thread **ttd)
{
	struct thread *td;

	if (sigev->sigev_notify == SIGEV_THREAD_ID) {
		td = FUNC1(sigev->sigev_notify_thread_id, p->p_pid);
		if (td == NULL)
			return (ESRCH);
		*ttd = td;
	} else {
		*ttd = NULL;
		FUNC0(p);
	}
	return (0);
}
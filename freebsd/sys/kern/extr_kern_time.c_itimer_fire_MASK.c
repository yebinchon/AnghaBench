#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_8__ {scalar_t__ ksi_errno; int /*<<< orphan*/  ksi_signo; } ;
struct TYPE_9__ {scalar_t__ sigev_notify; } ;
struct TYPE_7__ {int /*<<< orphan*/  it_interval; int /*<<< orphan*/  it_value; } ;
struct itimer {scalar_t__ it_overrun; TYPE_2__ it_ksi; TYPE_3__ it_sigev; int /*<<< orphan*/  it_callout; TYPE_1__ it_time; struct proc* it_proc; } ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct itimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct itimer*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 scalar_t__ SIGEV_SIGNAL ; 
 scalar_t__ SIGEV_THREAD_ID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (struct proc*,TYPE_3__*,struct thread**) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,struct thread*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct itimer *it)
{
	struct proc *p = it->it_proc;
	struct thread *td;

	if (it->it_sigev.sigev_notify == SIGEV_SIGNAL ||
	    it->it_sigev.sigev_notify == SIGEV_THREAD_ID) {
		if (FUNC6(p, &it->it_sigev, &td) != 0) {
			FUNC0(it);
			FUNC8(&it->it_time.it_value);
			FUNC8(&it->it_time.it_interval);
			FUNC4(&it->it_callout);
			FUNC1(it);
			return;
		}
		if (!FUNC2(&it->it_ksi)) {
			it->it_ksi.ksi_errno = 0;
			FUNC5(&it->it_ksi, &it->it_sigev);
			FUNC7(p, td, it->it_ksi.ksi_signo, &it->it_ksi);
		} else {
			if (it->it_overrun < INT_MAX)
				it->it_overrun++;
			else
				it->it_ksi.ksi_errno = ERANGE;
		}
		FUNC3(p);
	}
}
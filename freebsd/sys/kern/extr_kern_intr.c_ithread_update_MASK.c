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
typedef  int /*<<< orphan*/  u_char ;
struct thread {int /*<<< orphan*/  td_name; } ;
struct intr_thread {struct thread* it_thread; struct intr_event* it_event; } ;
struct intr_event {int /*<<< orphan*/  ie_fullname; int /*<<< orphan*/  ie_handlers; int /*<<< orphan*/  ie_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  ih_pri; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PRI_MAX_ITHD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 

__attribute__((used)) static void
FUNC8(struct intr_thread *ithd)
{
	struct intr_event *ie;
	struct thread *td;
	u_char pri;

	ie = ithd->it_event;
	td = ithd->it_thread;
	FUNC2(&ie->ie_lock, MA_OWNED);

	/* Determine the overall priority of this event. */
	if (FUNC0(&ie->ie_handlers))
		pri = PRI_MAX_ITHD;
	else
		pri = FUNC1(&ie->ie_handlers)->ih_pri;

	/* Update name and priority. */
	FUNC5(td->td_name, ie->ie_fullname, sizeof(td->td_name));
#ifdef KTR
	sched_clear_tdname(td);
#endif
	FUNC6(td);
	FUNC4(td, pri);
	FUNC7(td);
}
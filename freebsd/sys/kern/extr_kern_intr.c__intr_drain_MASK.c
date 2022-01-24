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
struct intr_thread {int it_flags; struct thread* it_thread; } ;
struct intr_event {struct intr_thread* ie_thread; } ;

/* Variables and functions */
 int IT_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 
 struct intr_event* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

void
FUNC5(int irq)
{
	struct intr_event *ie;
	struct intr_thread *ithd;
	struct thread *td;

	ie = FUNC1(irq);
	if (ie == NULL)
		return;
	if (ie->ie_thread == NULL)
		return;
	ithd = ie->ie_thread;
	td = ithd->it_thread;
	/*
	 * We set the flag and wait for it to be cleared to avoid
	 * long delays with potentially busy interrupt handlers
	 * were we to only sample TD_AWAITING_INTR() every tick.
	 */
	FUNC3(td);
	if (!FUNC0(td)) {
		ithd->it_flags |= IT_WAIT;
		while (ithd->it_flags & IT_WAIT) {
			FUNC4(td);
			FUNC2("idrain", 1);
			FUNC3(td);
		}
	}
	FUNC4(td);
	return;
}
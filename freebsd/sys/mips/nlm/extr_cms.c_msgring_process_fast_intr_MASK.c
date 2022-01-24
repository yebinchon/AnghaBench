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
struct msgring_thread {int needed; struct thread* thread; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 unsigned long long IRQ_MSGRING ; 
 int /*<<< orphan*/  SRQ_INTR ; 
 scalar_t__ FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/ * msgring_nintr ; 
 struct msgring_thread* msgring_threads ; 
 int /*<<< orphan*/ * msgring_wakeup_nosleep ; 
 int /*<<< orphan*/ * msgring_wakeup_sleep ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	struct msgring_thread *mthd;
	struct thread *td;
	int	cpu;

	cpu = FUNC2();
	mthd = &msgring_threads[cpu];
	msgring_nintr[cpu]++;
	td = mthd->thread;

	/* clear pending interrupts */
	FUNC3(1ULL << IRQ_MSGRING);

	/* wake up the target thread */
	mthd->needed = 1;
	FUNC5(td);
	if (FUNC0(td)) {
		msgring_wakeup_sleep[cpu]++;
		FUNC1(td);
		FUNC4(td, SRQ_INTR);
	} else
		msgring_wakeup_nosleep[cpu]++;

	FUNC6(td);

	return (FILTER_HANDLED);
}
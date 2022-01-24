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
struct pcpuidlestat {int idlecalls; int oldidlecalls; } ;

/* Variables and functions */
 struct pcpuidlestat* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int SWT_IDLE ; 
 int SW_VOL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  idlestat ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sched_lock ; 
 scalar_t__ FUNC7 () ; 

void
FUNC8(void *dummy)
{
	struct pcpuidlestat *stat;

	FUNC1();
	stat = FUNC0(idlestat);
	for (;;) {
		FUNC4(&Giant, MA_NOTOWNED);

		while (FUNC7() == 0) {
			FUNC2(stat->idlecalls + stat->oldidlecalls > 64);
			stat->idlecalls++;
		}

		FUNC5(&sched_lock);
		FUNC3(SW_VOL | SWT_IDLE, NULL);
		FUNC6(&sched_lock);
	}
}
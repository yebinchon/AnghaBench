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
typedef  int u_int ;
struct proc {char* p_comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KDB_WHY_WATCHDOG ; 
 int MAXCOMLEN ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct proc* curproc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int watchdog_cpu ; 
 int watchdog_dontfire ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ watchdog_nmi ; 
 int watchdog_timer ; 

void
FUNC7(u_int cpuid)
{
	char old_pcomm[MAXCOMLEN + 1];
	struct proc *p;

	if (watchdog_cpu != cpuid)
		return;

	FUNC4("watchdog started on cpu %d\n", cpuid);
	p = curproc;
	FUNC2(p->p_comm, old_pcomm, MAXCOMLEN + 1);
	FUNC5(p->p_comm, MAXCOMLEN + 1, "mp_watchdog cpu %d", cpuid);
	while (1) {
		FUNC0(1000000);				/* One second. */
		if (watchdog_cpu != cpuid)
			break;
		FUNC1(&watchdog_timer, 1);
		if (watchdog_timer < 4)
			FUNC4("Watchdog timer: %d\n", watchdog_timer);
		if (watchdog_timer == 0 && watchdog_dontfire == 0) {
			FUNC4("Watchdog firing!\n");
			watchdog_dontfire = 1;
			if (watchdog_nmi)
				FUNC6();
			else
				FUNC3(KDB_WHY_WATCHDOG, "mp_watchdog");
		}
	}
	FUNC2(old_pcomm, p->p_comm, MAXCOMLEN + 1);
	FUNC4("watchdog stopped on cpu %d\n", cpuid);
}
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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_long ;

/* Variables and functions */
 int /*<<< orphan*/  KDB_WHY_WATCHDOG ; 
 scalar_t__* intrcnt ; 
 char* intrnames ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int sintrcnt ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	int nintr;
	uint64_t inttotal;
	u_long *curintr;
	char *curname;

	curintr = intrcnt;
	curname = intrnames;
	inttotal = 0;
	nintr = sintrcnt / sizeof(u_long);

	FUNC3("interrupt                   total\n");
	while (--nintr >= 0) {
		if (*curintr)
			FUNC3("%-12s %20lu\n", curname, *curintr);
		curname += FUNC4(curname) + 1;
		inttotal += *curintr++;
	}
	FUNC3("Total        %20ju\n", (uintmax_t)inttotal);

#if defined(KDB) && !defined(KDB_UNATTENDED)
	kdb_backtrace();
	kdb_enter(KDB_WHY_WATCHDOG, "watchdog timeout");
#else
	FUNC2("watchdog timeout");
#endif
}
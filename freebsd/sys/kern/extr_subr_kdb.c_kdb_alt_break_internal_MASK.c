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

/* Variables and functions */
#define  KDB_REQ_DEBUGGER 130 
#define  KDB_REQ_PANIC 129 
#define  KDB_REQ_REBOOT 128 
 int /*<<< orphan*/  KDB_WHY_BREAK ; 
 int FUNC0 (int,int*) ; 
 int /*<<< orphan*/  kdb_alt_break_to_debugger ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(int key, int *state, int force_gdb)
{
	int brk;

	if (!kdb_alt_break_to_debugger)
		return (0);
	brk = FUNC0(key, state);
	switch (brk) {
	case KDB_REQ_DEBUGGER:
		if (force_gdb)
			FUNC1("gdb");
		FUNC2(KDB_WHY_BREAK, "Break to debugger");
		break;

	case KDB_REQ_PANIC:
		if (force_gdb)
			FUNC1("gdb");
		FUNC3("Panic sequence on console");
		break;

	case KDB_REQ_REBOOT:
		FUNC4();
		break;
	}
	return (0);
}
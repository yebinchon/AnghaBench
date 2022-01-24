#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cmd; int cmp; int /*<<< orphan*/ * usage; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int PS_CMP_PLURAL ; 
 TYPE_1__* cmd_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
	size_t i, l;
	int multi;

	FUNC2("usage: procstat [--libxo] [-h] [-M core] [-N system]"
	    " [-w interval] command\n"
	    "                [pid ... | core ...]\n"
	    "       procstat [--libxo] -a [-h] [-M core] [-N system] "
	    " [-w interval] command\n"
	    "       procstat [--libxo] [-h] [-M core] [-N system]"
	    " [-w interval]\n"
	    "                [-S | -b | -c | -e | -f [-C] | -i [-n] | "
	    "-j [-n] | -k [-k] |\n"
	    "                 -l | -r [-H] | -s | -t | -v | -x] "
	    "[pid ... | core ...]\n"
	    "       procstat [--libxo] -a [-h] [-M core] [-N system]"
	    " [-w interval]\n"
	    "                [-S | -b | -c | -e | -f [-C] | -i [-n] | "
	    "-j [-n] | -k [-k] |\n"
	    "                 -l | -r [-H] | -s | -t | -v | -x]\n"
	    "       procstat [--libxo] -L [-h] [-M core] [-N system] core ...\n"
	    "Available commands:\n");
	for (i = 0, l = FUNC1(cmd_table); i < l; i++) {
		multi = i + 1 < l && cmd_table[i].cmd == cmd_table[i + 1].cmd;
		FUNC2("       %s%s%s", multi ? "[" : "",
		    cmd_table[i].command, (cmd_table[i].cmp & PS_CMP_PLURAL) ?
		    "(s)" : "");
		for (; i + 1 < l && cmd_table[i].cmd == cmd_table[i + 1].cmd;
		    i++)
			FUNC2(" | %s%s", cmd_table[i + 1].command,
			    (cmd_table[i].cmp & PS_CMP_PLURAL) ? "(s)" : "");
		if (multi)
			FUNC2("]");
		if (cmd_table[i].usage != NULL)
			FUNC2(" %s", cmd_table[i].usage);
		FUNC2("\n");
	}
	FUNC3();
	FUNC0(EX_USAGE);
}
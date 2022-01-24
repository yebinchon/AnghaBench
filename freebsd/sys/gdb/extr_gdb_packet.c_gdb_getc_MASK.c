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
struct TYPE_2__ {int (* gdb_getc ) () ;int gdb_dbfeatures; int /*<<< orphan*/  (* gdb_term ) () ;} ;

/* Variables and functions */
 int FUNC0 (char) ; 
 int GDB_DBGP_FEAT_WANTTERM ; 
 TYPE_1__* gdb_cur ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(void)
{
	int c;

	do
		c = gdb_cur->gdb_getc();
	while (c == -1);

	if (c == FUNC0('C')) {
		FUNC3("Received ^C; trying to switch back to ddb.\n");

		if (gdb_cur->gdb_dbfeatures & GDB_DBGP_FEAT_WANTTERM)
			gdb_cur->gdb_term();

		if (FUNC1("ddb") != 0)
			FUNC3("The ddb backend could not be selected.\n");
		else {
			FUNC3("using longjmp, hope it works!\n");
			FUNC2();
		}
	}
	return (c);
}
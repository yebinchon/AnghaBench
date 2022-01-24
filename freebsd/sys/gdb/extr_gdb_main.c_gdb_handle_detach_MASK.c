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
struct TYPE_2__ {int gdb_dbfeatures; int /*<<< orphan*/  (* gdb_term ) () ;} ;

/* Variables and functions */
 int GDB_DBGP_FEAT_WANTTERM ; 
 TYPE_1__* gdb_cur ; 
 scalar_t__ gdb_listening ; 
 int gdb_return_to_ddb ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
	FUNC0();
	gdb_listening = 0;

	if (gdb_cur->gdb_dbfeatures & GDB_DBGP_FEAT_WANTTERM)
		gdb_cur->gdb_term();

#ifdef DDB
	if (!gdb_return_to_ddb)
		return;

	gdb_return_to_ddb = false;

	if (kdb_dbbe_select("ddb") != 0)
		printf("The ddb backend could not be selected.\n");
#endif
}
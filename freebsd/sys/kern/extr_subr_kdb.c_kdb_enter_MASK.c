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
 char* KDB_WHY_UNSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ kdb_active ; 
 int /*<<< orphan*/ * kdb_dbbe ; 
 char const* kdb_why ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

void
FUNC2(const char *why, const char *msg)
{

	if (kdb_dbbe != NULL && kdb_active == 0) {
		if (msg != NULL)
			FUNC1("KDB: enter: %s\n", msg);
		kdb_why = why;
		FUNC0();
		kdb_why = KDB_WHY_UNSET;
	}
}
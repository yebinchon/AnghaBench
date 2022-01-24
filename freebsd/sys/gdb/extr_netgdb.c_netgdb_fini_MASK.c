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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gdb_cur ; 
 int /*<<< orphan*/ * netgdb_conn ; 
 int /*<<< orphan*/  netgdb_prev_dbgport ; 
 int* netgdb_prev_kdb_inactive ; 
 int /*<<< orphan*/  netgdb_rxsb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{

	/* TODO: tear down conn gracefully? */
	if (netgdb_conn != NULL) {
		FUNC0(netgdb_conn);
		netgdb_conn = NULL;
	}

	FUNC1(&netgdb_rxsb);

	gdb_cur = netgdb_prev_dbgport;

	if (netgdb_prev_kdb_inactive != NULL) {
		*netgdb_prev_kdb_inactive = -1;
		netgdb_prev_kdb_inactive = NULL;
	}
}
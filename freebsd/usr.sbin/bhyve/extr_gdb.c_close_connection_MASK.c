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
 int /*<<< orphan*/  cur_comm ; 
 int cur_fd ; 
 int /*<<< orphan*/  cur_resp ; 
 int /*<<< orphan*/  gdb_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * read_event ; 
 int /*<<< orphan*/ * write_event ; 

__attribute__((used)) static void
FUNC6(void)
{

	/*
	 * XXX: This triggers a warning because mevent does the close
	 * before the EV_DELETE.
	 */
	FUNC4(&gdb_lock);
	FUNC2(write_event);
	FUNC3(read_event);
	write_event = NULL;
	read_event = NULL;
	FUNC1(&cur_comm);
	FUNC1(&cur_resp);
	cur_fd = -1;

	/* Resume any stopped vCPUs. */
	FUNC0();
	FUNC5(&gdb_lock);
}
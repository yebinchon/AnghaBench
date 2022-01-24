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
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCOV_ADD ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gcov_info*) ; 
 scalar_t__ gcov_events_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_info*) ; 
 unsigned int FUNC2 (struct gcov_info*) ; 
 int /*<<< orphan*/  gcov_mtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct gcov_info *info)
{
	static unsigned int gcov_version;

	FUNC4(&gcov_mtx);
	if (gcov_version == 0) {
		gcov_version = FUNC2(info);
		/*
		 * Printing gcc's version magic may prove useful for debugging
		 * incompatibility reports.
		 */
		FUNC3(LOG_INFO, "version magic: 0x%x\n", gcov_version);
	}
	/*
	 * Add new profiling data structure to list and inform event
	 * listener.
	 */
	FUNC1(info);
	if (gcov_events_enabled)
		FUNC0(GCOV_ADD, info);
	FUNC5(&gcov_mtx);
}
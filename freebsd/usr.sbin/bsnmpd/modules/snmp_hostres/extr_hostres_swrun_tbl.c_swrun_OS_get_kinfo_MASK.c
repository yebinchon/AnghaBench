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
struct swrun_entry {int /*<<< orphan*/  flags; } ;
struct kld_file_stat {int version; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  HR_SWRUN_FOUND ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ NO_PID ; 
 int /*<<< orphan*/  FUNC0 (struct kld_file_stat*,struct swrun_entry*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct kld_file_stat*) ; 
 struct swrun_entry* FUNC3 (scalar_t__) ; 
 struct swrun_entry* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	int fileid;
	struct swrun_entry *entry;
	struct kld_file_stat stat;

	for (fileid = FUNC1(0); fileid > 0; fileid = FUNC1(fileid)) {
		stat.version = sizeof(struct kld_file_stat);
		if (FUNC2(fileid, &stat) < 0) {
			FUNC5(LOG_ERR, "kldstat() failed: %m");
			continue;
		}

		/*
		 * kernel and kernel files (*.ko) will be indexed starting with
		 * NO_PID + 1; NO_PID is PID_MAX + 1 thus it will be no risk to
		 * overlap with real PIDs which are in range of 1 .. NO_PID
		 */
		entry = FUNC4(NO_PID + 1 + stat.id);
		if (entry == NULL) {
			/* new entry - get memory for it */
			entry = FUNC3(NO_PID + 1 + stat.id);
			if (entry == NULL)
				continue;
		}
		entry->flags |= HR_SWRUN_FOUND; /* mark it as found */

		FUNC0(&stat, entry);
	}
}
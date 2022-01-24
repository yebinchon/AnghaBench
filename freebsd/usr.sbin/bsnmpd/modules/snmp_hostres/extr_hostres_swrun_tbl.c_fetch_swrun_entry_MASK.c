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
struct swrun_entry {scalar_t__ index; void* status; } ;
struct kld_file_stat {int version; } ;
struct kinfo_proc {int dummy; } ;
typedef  int /*<<< orphan*/  stat ;
typedef  void* int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  KERN_PROC_PID ; 
 scalar_t__ NO_PID ; 
 scalar_t__ SRS_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * hr_kd ; 
 int /*<<< orphan*/  FUNC2 (struct kinfo_proc*,struct swrun_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct kld_file_stat*,struct swrun_entry*) ; 
 int FUNC4 (scalar_t__,struct kld_file_stat*) ; 
 struct kinfo_proc* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int*) ; 

__attribute__((used)) static void
FUNC6(struct swrun_entry *entry)
{
	struct kinfo_proc *plist;
	int nproc;
	struct kld_file_stat stat;

	FUNC1(entry !=  NULL);

	if (entry->index >= NO_PID + 1)	{
		/*
		 * kernel and kernel files (*.ko) will be indexed
		 * starting with NO_PID + 1; NO_PID is PID_MAX + 1
		 * thus it will be no risk to overlap with real PIDs
		 * which are in range of 1 .. NO_PID
		 */
		stat.version = sizeof(stat);
		if (FUNC4(entry->index - NO_PID - 1, &stat) == -1) {
			/*
			 * not found, it's gone. Mark it as invalid for now, it
			 * will be removed from the list at next global refersh
			 */
			 FUNC0("missing item with kid=%d",
			     entry->index -  NO_PID - 1);
			entry->status = (int32_t)SRS_INVALID;
		} else
			FUNC3(&stat, entry);

	} else {
		/* this is a process */
		FUNC1(hr_kd != NULL);
		plist = FUNC5(hr_kd, KERN_PROC_PID,
		    entry->index - 1, &nproc);
		if (plist == NULL || nproc != 1) {
			FUNC0("missing item with PID=%d", entry->index - 1);
			entry->status = (int32_t)SRS_INVALID;
		} else
			FUNC2(plist, entry);
	}
}
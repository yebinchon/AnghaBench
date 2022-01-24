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
struct kinfo_proc {scalar_t__ ki_pid; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  HR_SWRUN_FOUND ; 
 int /*<<< orphan*/  KERN_PROC_ALL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  hr_kd ; 
 int /*<<< orphan*/  FUNC0 (struct kinfo_proc*,struct swrun_entry*) ; 
 struct kinfo_proc* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct swrun_entry* FUNC2 (scalar_t__) ; 
 struct swrun_entry* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct kinfo_proc *plist, *kp;
	int i;
	int nproc;
	struct swrun_entry *entry;

	plist = FUNC1(hr_kd, KERN_PROC_ALL, 0, &nproc);
	if (plist == NULL || nproc < 0) {
		FUNC4(LOG_ERR, "kvm_getprocs() failed: %m");
		return;
	}
	for (i = 0, kp = plist; i < nproc; i++, kp++) {
		/*
		 * The SNMP table's index must begin from 1 (as specified by
		 * this table definition), the PIDs are starting from 0
		 * so we are translating the PIDs to +1
		 */
		entry = FUNC3((int32_t)kp->ki_pid + 1);
		if (entry == NULL) {
			/* new entry - get memory for it */
			entry = FUNC2((int32_t)kp->ki_pid + 1);
			if (entry == NULL)
				continue;
		}
		entry->flags |= HR_SWRUN_FOUND;	/* mark it as found */

		FUNC0(kp, entry);
	}
}
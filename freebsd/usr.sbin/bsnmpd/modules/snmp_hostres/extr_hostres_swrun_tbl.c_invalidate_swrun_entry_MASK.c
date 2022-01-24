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
struct kld_file_stat {int version; int refs; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct kinfo_proc {int dummy; } ;
typedef  int /*<<< orphan*/  stat ;
typedef  void* int32_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct kinfo_proc*) ; 
 int /*<<< orphan*/  KERN_PROC_PID ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ NO_PID ; 
 int /*<<< orphan*/  SIGKILL ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_NOT_WRITEABLE ; 
 int SNMP_ERR_RES_UNAVAIL ; 
 scalar_t__ SRS_INVALID ; 
 scalar_t__ SWOSIndex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * hr_kd ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,struct kld_file_stat*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct kinfo_proc* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static int
FUNC8(struct swrun_entry *entry, int commit)
{
	struct kinfo_proc *plist;
	int nproc;
	struct kld_file_stat stat;

	FUNC2(entry !=  NULL);

	if (entry->index >= NO_PID + 1)	{
		/* this is a kernel item */
		FUNC0("atempt to unload KLD %d",
		    entry->index -  NO_PID - 1);

		if (entry->index == SWOSIndex) {
			/* can't invalidate the kernel itself */
			return (SNMP_ERR_NOT_WRITEABLE);
		}

		stat.version = sizeof(stat);
		if (FUNC4(entry->index - NO_PID - 1, &stat) == -1) {
			/*
			 * not found, it's gone. Mark it as invalid for now, it
			 * will be removed from the list at next global
			 * refresh
			 */
			FUNC0("missing item with kid=%d",
			    entry->index - NO_PID - 1);
			entry->status = (int32_t)SRS_INVALID;
			return (SNMP_ERR_NOERROR);
		}
		/*
		 * There is no way to try to unload a module. There seems
		 * also no way to find out whether it is busy without unloading
		 * it. We can assume that it is busy, if the reference count
		 * is larger than 2, but if it is 1 nothing helps.
		 */
		if (!commit) {
			if (stat.refs > 1)
				return (SNMP_ERR_NOT_WRITEABLE);
			return (SNMP_ERR_NOERROR);
		}
		if (FUNC5(stat.id) == -1) {
			FUNC7(LOG_ERR,"kldunload for %d/%s failed: %m",
			    stat.id, stat.name);
			if (errno == EBUSY)
				return (SNMP_ERR_NOT_WRITEABLE);
			else
				return (SNMP_ERR_RES_UNAVAIL);
		}
	} else {
		/* this is a process */
		FUNC2(hr_kd != NULL);

		plist = FUNC6(hr_kd, KERN_PROC_PID,
		    entry->index - 1, &nproc);
		if (plist == NULL || nproc != 1) {
			FUNC0("missing item with PID=%d", entry->index - 1);
			entry->status = (int32_t)SRS_INVALID;
			return (SNMP_ERR_NOERROR);
		}
		if (FUNC1(plist)) {
			/* you don't want to do this */
			return (SNMP_ERR_NOT_WRITEABLE);
		}
		if (FUNC3(entry->index - 1, commit ? SIGKILL : 0) < 0) {
			FUNC7(LOG_ERR,"kill (%d, SIGKILL) failed: %m",
			    entry->index - 1);
			if (errno == ESRCH) {
				/* race: just gone */
				entry->status = (int32_t)SRS_INVALID;
				return (SNMP_ERR_NOERROR);
			}
			return (SNMP_ERR_GENERR);
		}
	}
	return (SNMP_ERR_NOERROR);
}
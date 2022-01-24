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
struct file_lock {int blocking; int /*<<< orphan*/  client_name; } ;
typedef  enum partialfilelock_status { ____Placeholder_partialfilelock_status } partialfilelock_status ;
typedef  enum nfslock_status { ____Placeholder_nfslock_status } nfslock_status ;
typedef  enum hwlock_status { ____Placeholder_hwlock_status } hwlock_status ;

/* Variables and functions */
#define  HW_DENIED 135 
#define  HW_GRANTED 134 
#define  HW_GRANTED_DUPLICATE 133 
#define  HW_RESERR 132 
#define  NFS_DENIED 131 
#define  NFS_GRANTED 130 
#define  NFS_GRANTED_DUPLICATE 129 
#define  NFS_RESERR 128 
 int PFL_DENIED ; 
 int PFL_GRANTED ; 
 int PFL_GRANTED_DUPLICATE ; 
 int PFL_HWDENIED ; 
 int PFL_HWRESERR ; 
 int PFL_NFSBLOCKED ; 
 int PFL_NFSDENIED ; 
 int PFL_NFSDENIED_NOLOCK ; 
 int PFL_NFSRESERR ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC3 (struct file_lock*) ; 
 int FUNC4 (struct file_lock*) ; 
 int FUNC5 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

enum partialfilelock_status
FUNC7(struct file_lock *fl)
{
	enum partialfilelock_status retval;
	enum nfslock_status lnlstatus;
	enum hwlock_status hwstatus;

	FUNC1("Entering lock_partialfilelock\n");

	retval = PFL_DENIED;

	/*
	 * Execute the NFS lock first, if possible, as it is significantly
	 * easier and less expensive to undo than the filesystem lock
	 */

	lnlstatus = FUNC5(fl);

	switch (lnlstatus) {
	case NFS_GRANTED:
	case NFS_GRANTED_DUPLICATE:
		/*
		 * At this point, the NFS lock is allocated and active.
		 * Remember to clean it up if the hardware lock fails
		 */
		hwstatus = FUNC4(fl);

		switch (hwstatus) {
		case HW_GRANTED:
		case HW_GRANTED_DUPLICATE:
			FUNC1("HW GRANTED\n");
			/*
			 * XXX: Fixme: Check hwstatus for duplicate when
			 * true partial file locking and accounting is
			 * done on the hardware.
			 */
			if (lnlstatus == NFS_GRANTED_DUPLICATE) {
				retval = PFL_GRANTED_DUPLICATE;
			} else {
				retval = PFL_GRANTED;
			}
			FUNC6(fl->client_name);
			break;
		case HW_RESERR:
			FUNC1("HW RESERR\n");
			retval = PFL_HWRESERR;
			break;
		case HW_DENIED:
			FUNC1("HW DENIED\n");
			retval = PFL_HWDENIED;
			break;
		default:
			FUNC1("Unmatched hwstatus %d\n",hwstatus);
			break;
		}

		if (retval != PFL_GRANTED &&
		    retval != PFL_GRANTED_DUPLICATE) {
			/* Clean up the NFS lock */
			FUNC1("Deleting trial NFS lock\n");
			FUNC2(fl);
		}
		break;
	case NFS_DENIED:
		retval = PFL_NFSDENIED;
		break;
	case NFS_RESERR:
		retval = PFL_NFSRESERR;
		break;
	default:
		FUNC1("Unmatched lnlstatus %d\n");
		retval = PFL_NFSDENIED_NOLOCK;
		break;
	}

	/*
	 * By the time fl reaches here, it is completely free again on
	 * failure.  The NFS lock done before attempting the
	 * hardware lock has been backed out
	 */

	if (retval == PFL_NFSDENIED || retval == PFL_HWDENIED) {
		/* Once last chance to check the lock */
		if (fl->blocking == 1) {
			if (retval == PFL_NFSDENIED) {
				/* Queue the lock */
				FUNC1("BLOCKING LOCK RECEIVED\n");
				retval = PFL_NFSBLOCKED;
				FUNC0(fl);
				FUNC3(fl);
			} else {
				/* retval is okay as PFL_HWDENIED */
				FUNC1("BLOCKING LOCK DENIED IN HARDWARE\n");
				FUNC3(fl);
			}
		} else {
			/* Leave retval alone, it's already correct */
			FUNC1("Lock denied.  Non-blocking failure\n");
			FUNC3(fl);
		}
	}

	FUNC1("Exiting lock_partialfilelock\n");

	return retval;
}
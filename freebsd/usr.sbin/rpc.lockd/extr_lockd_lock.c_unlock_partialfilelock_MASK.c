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
typedef  struct file_lock {int /*<<< orphan*/  client_name; } const file_lock ;
typedef  enum partialfilelock_status { ____Placeholder_partialfilelock_status } partialfilelock_status ;
typedef  enum nfslock_status { ____Placeholder_nfslock_status } nfslock_status ;
typedef  enum hwlock_status { ____Placeholder_hwlock_status } hwlock_status ;

/* Variables and functions */
#define  HW_DENIED_NOLOCK 131 
#define  HW_GRANTED 130 
 int HW_GRANTED_DUPLICATE ; 
#define  NFS_DENIED_NOLOCK 129 
#define  NFS_GRANTED 128 
 int NFS_RESERR ; 
 int PFL_DENIED ; 
 int PFL_GRANTED ; 
 int PFL_HWRESERR ; 
 int PFL_NFSRESERR ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct file_lock const*) ; 
 int FUNC3 (struct file_lock const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct file_lock const*) ; 
 int FUNC7 (struct file_lock const*,struct file_lock const**,struct file_lock const**,struct file_lock const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

enum partialfilelock_status
FUNC9(const struct file_lock *fl)
{
	struct file_lock *lfl,*rfl,*releasedfl,*selffl;
	enum partialfilelock_status retval;
	enum nfslock_status unlstatus;
	enum hwlock_status unlhwstatus, lhwstatus;

	FUNC1("Entering unlock_partialfilelock\n");

	selffl = NULL;
	lfl = NULL;
	rfl = NULL;
	releasedfl = NULL;
	retval = PFL_DENIED;

	/*
	 * There are significant overlap and atomicity issues
	 * with partially releasing a lock.  For example, releasing
	 * part of an NFS shared lock does *not* always release the
	 * corresponding part of the file since there is only one
	 * rpc.lockd UID but multiple users could be requesting it
	 * from NFS.  Also, an unlock request should never allow
	 * another process to gain a lock on the remaining parts.
	 * ie. Always apply the new locks before releasing the
	 * old one
	 */

	/*
	 * Loop is required since multiple little locks
	 * can be allocated and then deallocated with one
	 * big unlock.
	 *
	 * The loop is required to be here so that the nfs &
	 * hw subsystems do not need to communicate with one
	 * one another
	 */

	do {
		FUNC1("Value of releasedfl: %p\n",releasedfl);
		/* lfl&rfl are created *AND* placed into the NFS lock list if required */
		unlstatus = FUNC7(fl, &releasedfl, &lfl, &rfl);
		FUNC1("Value of releasedfl: %p\n",releasedfl);


		/* XXX: This is grungy.  It should be refactored to be cleaner */
		if (lfl != NULL) {
			lhwstatus = FUNC3(lfl);
			if (lhwstatus != HW_GRANTED &&
			    lhwstatus != HW_GRANTED_DUPLICATE) {
				FUNC1("HW duplicate lock failure for left split\n");
			}
			FUNC4(lfl->client_name);
		}

		if (rfl != NULL) {
			lhwstatus = FUNC3(rfl);
			if (lhwstatus != HW_GRANTED &&
			    lhwstatus != HW_GRANTED_DUPLICATE) {
				FUNC1("HW duplicate lock failure for right split\n");
			}
			FUNC4(rfl->client_name);
		}

		switch (unlstatus) {
		case NFS_GRANTED:
			/* Attempt to unlock on the hardware */
			FUNC1("NFS unlock granted.  Attempting hardware unlock\n");

			/* This call *MUST NOT* unlock the two newly allocated locks */
			unlhwstatus = FUNC6(fl);
			FUNC1("HW unlock returned with code %d\n",unlhwstatus);

			switch (unlhwstatus) {
			case HW_GRANTED:
				FUNC1("HW unlock granted\n");
				FUNC8(releasedfl->client_name);
				retval = PFL_GRANTED;
				break;
			case HW_DENIED_NOLOCK:
				/* Huh?!?!  This shouldn't happen */
				FUNC1("HW unlock denied no lock\n");
				retval = PFL_HWRESERR;
				/* Break out of do-while */
				unlstatus = NFS_RESERR;
				break;
			default:
				FUNC1("HW unlock failed\n");
				retval = PFL_HWRESERR;
				/* Break out of do-while */
				unlstatus = NFS_RESERR;
				break;
			}

			FUNC1("Exiting with status retval: %d\n",retval);

			FUNC5();
			break;
		case NFS_DENIED_NOLOCK:
			retval = PFL_GRANTED;
			FUNC1("All locks cleaned out\n");
			break;
		default:
			retval = PFL_NFSRESERR;
			FUNC1("NFS unlock failure\n");
			FUNC2(fl);
			break;
		}

		if (releasedfl != NULL) {
			if (fl == releasedfl) {
				/*
				 * XXX: YECHHH!!! Attempt to unlock self succeeded
				 * but we can't deallocate the space yet.  This is what
				 * happens when you don't write malloc and free together
				 */
				FUNC1("Attempt to unlock self\n");
				selffl = releasedfl;
			} else {
				/*
				 * XXX: this deallocation *still* needs to migrate closer
				 * to the allocation code way up in get_lock or the allocation
				 * code needs to migrate down (violation of "When you write
				 * malloc you must write free")
				 */

				FUNC0(releasedfl);
				releasedfl = NULL;
			}
		}

	} while (unlstatus == NFS_GRANTED);

	if (selffl != NULL) {
		/*
		 * This statement wipes out the incoming file lock (fl)
		 * in spite of the fact that it is declared const
		 */
		FUNC1("WARNING!  Destroying incoming lock pointer\n");
		FUNC0(selffl);
	}

	FUNC1("Exiting unlock_partialfilelock\n");

	return retval;
}
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
typedef  struct file_lock const file_lock ;
typedef  enum partialfilelock_status { ____Placeholder_partialfilelock_status } partialfilelock_status ;
typedef  enum nfslock_status { ____Placeholder_nfslock_status } nfslock_status ;

/* Variables and functions */
 int NFS_GRANTED ; 
 int NFS_GRANTED_DUPLICATE ; 
 int PFL_DENIED ; 
 int PFL_GRANTED ; 
 int PFL_GRANTED_DUPLICATE ; 
 int PFL_NFSDENIED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock const*) ; 
 int FUNC2 (struct file_lock const*,struct file_lock const**) ; 

enum partialfilelock_status
FUNC3(const struct file_lock *fl,
    struct file_lock **conflicting_fl)
{
	enum partialfilelock_status retval;
	enum nfslock_status teststatus;

	FUNC0("Entering testpartialfilelock...\n");

	retval = PFL_DENIED;

	teststatus = FUNC2(fl, conflicting_fl);
	FUNC0("test_partialfilelock: teststatus %d\n",teststatus);

	if (teststatus == NFS_GRANTED || teststatus == NFS_GRANTED_DUPLICATE) {
		/* XXX: Add the underlying filesystem locking code */
		retval = (teststatus == NFS_GRANTED) ?
		    PFL_GRANTED : PFL_GRANTED_DUPLICATE;
		FUNC0("Dumping locks...\n");
		FUNC1(fl);
		FUNC1(*conflicting_fl);
		FUNC0("Done dumping locks...\n");
	} else {
		retval = PFL_NFSDENIED;
		FUNC0("NFS test denied.\n");
		FUNC1(fl);
		FUNC0("Conflicting.\n");
		FUNC1(*conflicting_fl);
	}

	FUNC0("Exiting testpartialfilelock...\n");

	return retval;
}
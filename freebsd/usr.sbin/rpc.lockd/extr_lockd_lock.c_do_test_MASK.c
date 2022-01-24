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
struct file_lock {int flags; } ;
typedef  enum partialfilelock_status { ____Placeholder_partialfilelock_status } partialfilelock_status ;
typedef  enum nlm_stats { ____Placeholder_nlm_stats } nlm_stats ;

/* Variables and functions */
 int LOCK_V4 ; 
#define  PFL_GRANTED 133 
#define  PFL_GRANTED_DUPLICATE 132 
#define  PFL_HWDENIED 131 
#define  PFL_HWRESERR 130 
#define  PFL_NFSDENIED 129 
#define  PFL_NFSRESERR 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*) ; 
 int nlm4_denied ; 
 int nlm4_denied_nolocks ; 
 int nlm4_failed ; 
 int nlm4_granted ; 
 int nlm_denied ; 
 int nlm_denied_nolocks ; 
 int nlm_granted ; 
 int FUNC2 (struct file_lock*,struct file_lock**) ; 

enum nlm_stats
FUNC3(struct file_lock *fl, struct file_lock **conflicting_fl)
{
	enum partialfilelock_status pfsret;
	enum nlm_stats retval;

	FUNC0("Entering do_test...\n");

	pfsret = FUNC2(fl,conflicting_fl);

	switch (pfsret) {
	case PFL_GRANTED:
		FUNC0("PFL test lock granted\n");
		FUNC1(fl);
		FUNC1(*conflicting_fl);
		retval = (fl->flags & LOCK_V4) ? nlm4_granted : nlm_granted;
		break;
	case PFL_GRANTED_DUPLICATE:
		FUNC0("PFL test lock granted--duplicate id detected\n");
		FUNC1(fl);
		FUNC1(*conflicting_fl);
		FUNC0("Clearing conflicting_fl for call semantics\n");
		*conflicting_fl = NULL;
		retval = (fl->flags & LOCK_V4) ? nlm4_granted : nlm_granted;
		break;
	case PFL_NFSDENIED:
	case PFL_HWDENIED:
		FUNC0("PFL test lock denied\n");
		FUNC1(fl);
		FUNC1(*conflicting_fl);
		retval = (fl->flags & LOCK_V4) ? nlm4_denied : nlm_denied;
		break;
	case PFL_NFSRESERR:
	case PFL_HWRESERR:
		FUNC0("PFL test lock resource fail\n");
		FUNC1(fl);
		FUNC1(*conflicting_fl);
		retval = (fl->flags & LOCK_V4) ? nlm4_denied_nolocks : nlm_denied_nolocks;
		break;
	default:
		FUNC0("PFL test lock *FAILED*\n");
		FUNC1(fl);
		FUNC1(*conflicting_fl);
		retval = (fl->flags & LOCK_V4) ? nlm4_failed : nlm_denied;
		break;
	}

	FUNC0("Exiting do_test...\n");

	return retval;
}
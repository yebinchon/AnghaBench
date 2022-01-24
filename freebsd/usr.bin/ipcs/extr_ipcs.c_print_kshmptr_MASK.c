#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cgid; int /*<<< orphan*/  cuid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; scalar_t__ key; } ;
struct TYPE_3__ {int shm_nattch; int shm_cpid; int shm_lpid; int /*<<< orphan*/  shm_segsz; TYPE_2__ shm_perm; int /*<<< orphan*/  shm_ctime; int /*<<< orphan*/  shm_dtime; int /*<<< orphan*/  shm_atime; } ;
struct shmid_kernel {TYPE_1__ u; } ;

/* Variables and functions */
 int BIGGEST ; 
 int CREATOR ; 
 int FUNC0 (int,TYPE_2__) ; 
 int OUTSTANDING ; 
 int PID ; 
 int TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(int i, int option, struct shmid_kernel *kshmptr)
{
	char    atime_buf[100], dtime_buf[100], ctime_buf[100];

	FUNC1(kshmptr->u.shm_atime, atime_buf);
	FUNC1(kshmptr->u.shm_dtime, dtime_buf);
	FUNC1(kshmptr->u.shm_ctime, ctime_buf);

	FUNC4("m %12d %12d %s %-8s %-8s",
	    FUNC0(i, kshmptr->u.shm_perm),
	    (int)kshmptr->u.shm_perm.key,
	    FUNC2(kshmptr->u.shm_perm.mode),
	    FUNC5(kshmptr->u.shm_perm.uid, 0),
	    FUNC3(kshmptr->u.shm_perm.gid, 0));

	if (option & CREATOR)
		FUNC4(" %-8s %-8s",
		    FUNC5(kshmptr->u.shm_perm.cuid, 0),
		    FUNC3(kshmptr->u.shm_perm.cgid, 0));

	if (option & OUTSTANDING)
		FUNC4(" %12d",
		    kshmptr->u.shm_nattch);

	if (option & BIGGEST)
		FUNC4(" %12zu",
		    kshmptr->u.shm_segsz);

	if (option & PID)
		FUNC4(" %12d %12d",
		    kshmptr->u.shm_cpid,
		    kshmptr->u.shm_lpid);

	if (option & TIME)
		FUNC4(" %s %s %s",
		    atime_buf,
		    dtime_buf,
		    ctime_buf);

	FUNC4("\n");
}
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
struct TYPE_3__ {int sem_nsems; TYPE_2__ sem_perm; int /*<<< orphan*/  sem_ctime; int /*<<< orphan*/  sem_otime; } ;
struct semid_kernel {TYPE_1__ u; } ;

/* Variables and functions */
 int BIGGEST ; 
 int CREATOR ; 
 int FUNC0 (int,TYPE_2__) ; 
 int TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(int i, int option, struct semid_kernel *ksemaptr)
{
	char    ctime_buf[100], otime_buf[100];

	FUNC1(ksemaptr->u.sem_otime, otime_buf);
	FUNC1(ksemaptr->u.sem_ctime, ctime_buf);

	FUNC4("s %12d %12d %s %-8s %-8s",
	    FUNC0(i, ksemaptr->u.sem_perm),
	    (int)ksemaptr->u.sem_perm.key,
	    FUNC2(ksemaptr->u.sem_perm.mode),
	    FUNC5(ksemaptr->u.sem_perm.uid, 0),
	    FUNC3(ksemaptr->u.sem_perm.gid, 0));

	if (option & CREATOR)
		FUNC4(" %-8s %-8s",
		    FUNC5(ksemaptr->u.sem_perm.cuid, 0),
		    FUNC3(ksemaptr->u.sem_perm.cgid, 0));

	if (option & BIGGEST)
		FUNC4(" %12d",
		    ksemaptr->u.sem_nsems);

	if (option & TIME)
		FUNC4(" %s %s",
		    otime_buf,
		    ctime_buf);

	FUNC4("\n");
}
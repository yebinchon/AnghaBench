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
struct TYPE_3__ {int msg_lspid; int msg_lrpid; int /*<<< orphan*/  msg_qbytes; int /*<<< orphan*/  msg_qnum; int /*<<< orphan*/  msg_cbytes; TYPE_2__ msg_perm; int /*<<< orphan*/  msg_ctime; int /*<<< orphan*/  msg_rtime; int /*<<< orphan*/  msg_stime; } ;
struct msqid_kernel {TYPE_1__ u; } ;

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
FUNC6(int i, int option, struct msqid_kernel *kmsqptr)
{
	char    stime_buf[100], rtime_buf[100], ctime_buf[100];

	FUNC1(kmsqptr->u.msg_stime, stime_buf);
	FUNC1(kmsqptr->u.msg_rtime, rtime_buf);
	FUNC1(kmsqptr->u.msg_ctime, ctime_buf);

	FUNC4("q %12d %12d %s %-8s %-8s",
	    FUNC0(i, kmsqptr->u.msg_perm),
	    (int)kmsqptr->u.msg_perm.key,
	    FUNC2(kmsqptr->u.msg_perm.mode),
	    FUNC5(kmsqptr->u.msg_perm.uid, 0),
	    FUNC3(kmsqptr->u.msg_perm.gid, 0));

	if (option & CREATOR)
		FUNC4(" %-8s %-8s",
		    FUNC5(kmsqptr->u.msg_perm.cuid, 0),
		    FUNC3(kmsqptr->u.msg_perm.cgid, 0));

	if (option & OUTSTANDING)
		FUNC4(" %12lu %12lu",
		    kmsqptr->u.msg_cbytes,
		    kmsqptr->u.msg_qnum);

	if (option & BIGGEST)
		FUNC4(" %20lu", kmsqptr->u.msg_qbytes);

	if (option & PID)
		FUNC4(" %12d %12d",
		    kmsqptr->u.msg_lspid,
		    kmsqptr->u.msg_lrpid);

	if (option & TIME)
		FUNC4(" %s %s %s",
		    stime_buf,
		    rtime_buf,
		    ctime_buf);

	FUNC4("\n");
}
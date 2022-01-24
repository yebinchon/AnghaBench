#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ dqb_btime; scalar_t__ dqb_itime; scalar_t__ dqb_curinodes; scalar_t__ dqb_isoftlimit; scalar_t__ dqb_ihardlimit; scalar_t__ dqb_curblocks; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_bhardlimit; } ;
struct quotause {TYPE_1__ dqblk; int /*<<< orphan*/  fsname; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int USRQUOTA ; 
 char* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(int type, u_long id, struct quotause *qup)
{
	time_t t;

	FUNC1("Raw %s quota information for id %lu on %s\n",
	    type == USRQUOTA ? "user" : "group", id, qup->fsname);
	FUNC1("block hard limit:     %ju\n",
	    (uintmax_t)qup->dqblk.dqb_bhardlimit);
	FUNC1("block soft limit:     %ju\n",
	    (uintmax_t)qup->dqblk.dqb_bsoftlimit);
	FUNC1("current block count:  %ju\n",
	    (uintmax_t)qup->dqblk.dqb_curblocks);
	FUNC1("i-node hard limit:    %ju\n",
	    (uintmax_t)qup->dqblk.dqb_ihardlimit);
	FUNC1("i-node soft limit:    %ju\n",
	    (uintmax_t)qup->dqblk.dqb_isoftlimit);
	FUNC1("current i-node count: %ju\n",
	    (uintmax_t)qup->dqblk.dqb_curinodes);
	FUNC1("block grace time:     %jd",
	    (intmax_t)qup->dqblk.dqb_btime);
	if (qup->dqblk.dqb_btime != 0) {
		t = qup->dqblk.dqb_btime;
		FUNC1(" %s", FUNC0(&t));
	} else {
		FUNC1("\n");
	}
	FUNC1("i-node grace time:    %jd", (intmax_t)qup->dqblk.dqb_itime);
	if (qup->dqblk.dqb_itime != 0) {
		t = qup->dqblk.dqb_itime;
		FUNC1(" %s", FUNC0(&t));
	} else {
		FUNC1("\n");
	}
}
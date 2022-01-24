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
struct TYPE_2__ {int /*<<< orphan*/  dqb_itime; int /*<<< orphan*/  dqb_btime; } ;
struct quotause {char* fsname; TYPE_1__ dqblk; struct quotause* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  L_SET ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** qfextension ; 
 int /*<<< orphan*/  tmpfil ; 

int
FUNC8(struct quotause *quplist, int outfd, int quotatype)
{
	struct quotause *qup;
	FILE *fd;

	FUNC6(outfd, 0);
	FUNC7(outfd, 0, L_SET);
	if ((fd = FUNC4(FUNC1(outfd), "w")) == NULL)
		FUNC2(1, "%s", tmpfil);
	FUNC5(fd, "Time units may be: days, hours, minutes, or seconds\n");
	FUNC5(fd, "Grace period before enforcing soft limits for %ss:\n",
	    qfextension[quotatype]);
	for (qup = quplist; qup; qup = qup->next) {
		FUNC5(fd, "%s: block grace period: %s, ",
		    qup->fsname, FUNC0(qup->dqblk.dqb_btime));
		FUNC5(fd, "file grace period: %s\n",
		    FUNC0(qup->dqblk.dqb_itime));
	}
	FUNC3(fd);
	return (1);
}
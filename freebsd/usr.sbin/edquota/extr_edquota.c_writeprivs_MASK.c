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
struct TYPE_2__ {int /*<<< orphan*/  dqb_ihardlimit; int /*<<< orphan*/  dqb_isoftlimit; int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_bhardlimit; int /*<<< orphan*/  dqb_bsoftlimit; int /*<<< orphan*/  dqb_curblocks; } ;
struct quotause {char* fsname; TYPE_1__ dqblk; struct quotause* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  L_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** qfextension ; 
 int /*<<< orphan*/  tmpfil ; 

int
FUNC9(struct quotause *quplist, int outfd, char *name, int quotatype)
{
	struct quotause *qup;
	FILE *fd;

	FUNC7(outfd, 0);
	FUNC8(outfd, 0, L_SET);
	if ((fd = FUNC3(FUNC0(outfd), "w")) == NULL)
		FUNC1(1, "%s", tmpfil);
	FUNC6(fd, "Quotas for %s %s:\n", qfextension[quotatype], name);
	for (qup = quplist; qup; qup = qup->next) {
		FUNC6(fd, "%s: in use: %s, ", qup->fsname,
		    FUNC4(qup->dqblk.dqb_curblocks));
		FUNC6(fd, "limits (soft = %s, ",
		    FUNC4(qup->dqblk.dqb_bsoftlimit));
		FUNC6(fd, "hard = %s)\n",
		    FUNC4(qup->dqblk.dqb_bhardlimit));
		FUNC6(fd, "\tinodes in use: %s, ",
		    FUNC5(qup->dqblk.dqb_curinodes));
		FUNC6(fd, "limits (soft = %s, ",
		    FUNC5(qup->dqblk.dqb_isoftlimit));
		FUNC6(fd, "hard = %s)\n",
		    FUNC5(qup->dqblk.dqb_ihardlimit));
	}
	FUNC2(fd);
	return (1);
}
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
struct statfs {char* f_mntonname; char* f_fstypename; int /*<<< orphan*/  f_mntfromname; } ;
struct quotause {struct quotause* next; int /*<<< orphan*/  fsname; } ;
struct fstab {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNT_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * filename ; 
 int /*<<< orphan*/  FUNC3 (struct quotause*) ; 
 struct fstab* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct statfs**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct statfs*,struct quotause*,long,int) ; 
 scalar_t__ FUNC7 (struct fstab*,struct quotause*,long,int) ; 
 scalar_t__ lflag ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct statfs*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct quotause *
FUNC13(long id, int quotatype)
{
	struct quotause *qup, *quptail = NULL;
	struct fstab *fs;
	struct quotause *quphead;
	struct statfs *fst;
	int nfst, i;
	struct statfs sfb;

	qup = quphead = (struct quotause *)0;

	if (filename != NULL && FUNC10(filename, &sfb) != 0)
		FUNC1(1, "cannot statfs %s", filename);
	nfst = FUNC5(&fst, MNT_NOWAIT);
	if (nfst == 0)
		FUNC2(2, "no filesystems mounted!");
	FUNC9();
	for (i = 0; i < nfst; i++) {
		if (qup == NULL) {
			if ((qup = (struct quotause *)FUNC8(sizeof *qup))
			    == NULL)
				FUNC2(2, "out of memory");
		}
		/*
		 * See if the user requested a specific file system
		 * or specified a file inside a mounted file system.
		 */
		if (filename != NULL &&
		    FUNC11(sfb.f_mntonname, fst[i].f_mntonname) != 0)
			continue;
		if (FUNC11(fst[i].f_fstypename, "nfs") == 0) {
			if (lflag)
				continue;
			if (FUNC6(&fst[i], qup, id, quotatype) == 0)
				continue;
		} else if (FUNC11(fst[i].f_fstypename, "ufs") == 0) {
			/*
			 * XXX
			 * UFS filesystems must be in /etc/fstab, and must
			 * indicate that they have quotas on (?!) This is quite
			 * unlike SunOS where quotas can be enabled/disabled
			 * on a filesystem independent of /etc/fstab, and it
			 * will still print quotas for them.
			 */
			if ((fs = FUNC4(fst[i].f_mntfromname)) == NULL)
				continue;
			if (FUNC7(fs, qup, id, quotatype) == 0)
				continue;
		} else
			continue;
		FUNC12(qup->fsname, fst[i].f_mntonname);
		if (quphead == NULL)
			quphead = qup;
		else
			quptail->next = qup;
		quptail = qup;
		quptail->next = 0;
		qup = NULL;
	}
	if (qup)
		FUNC3(qup);
	FUNC0();
	return (quphead);
}
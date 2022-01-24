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
struct quotause {struct quotause* next; int /*<<< orphan*/  dqblk; int /*<<< orphan*/  fsname; struct quotafile* qf; } ;
struct quotafile {int dummy; } ;
struct fstab {char* fs_spec; char* fs_file; char* fs_vfstype; } ;

/* Variables and functions */
 scalar_t__ EOPNOTSUPP ; 
 int O_CREAT ; 
 int O_RDWR ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct quotause*) ; 
 struct fstab* FUNC4 () ; 
 struct quotafile* FUNC5 (struct fstab*,int,int) ; 
 int FUNC6 (struct quotafile*,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

struct quotause *
FUNC12(long id, int quotatype, char *fspath)
{
	struct quotafile *qf;
	struct fstab *fs;
	struct quotause *qup, *quptail;
	struct quotause *quphead;

	FUNC7();
	quphead = quptail = NULL;
	while ((fs = FUNC4())) {
		if (fspath && *fspath && FUNC8(fspath, fs->fs_spec) &&
		    FUNC8(fspath, fs->fs_file))
			continue;
		if (FUNC8(fs->fs_vfstype, "ufs"))
			continue;
		if ((qf = FUNC5(fs, quotatype, O_CREAT|O_RDWR)) == NULL) {
			if (errno != EOPNOTSUPP)
				FUNC10("cannot open quotas on %s", fs->fs_file);
			continue;
		}
		if ((qup = (struct quotause *)FUNC0(1, sizeof(*qup))) == NULL)
			FUNC2(2, "out of memory");
		qup->qf = qf;
		FUNC9(qup->fsname, fs->fs_file, sizeof(qup->fsname));
		if (FUNC6(qf, &qup->dqblk, id) == -1) {
			FUNC10("cannot read quotas on %s", fs->fs_file);
			FUNC3(qup);
			continue;
		}
		if (quphead == NULL)
			quphead = qup;
		else
			quptail->next = qup;
		quptail = qup;
		qup->next = 0;
	}
	if (quphead == NULL) {
		FUNC11("No quotas on %s", fspath ? fspath : "any filesystems");
	}
	FUNC1();
	return (quphead);
}
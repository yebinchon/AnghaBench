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
struct ufsmount {struct fs* um_fs; } ;
struct mount {int mnt_kern_flag; } ;
struct fs {int /*<<< orphan*/  fs_fsmnt; } ;

/* Variables and functions */
 int FFSR_FORCE ; 
 int FFSR_UNSUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MNTK_SUSPEND ; 
 struct ufsmount* FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC2 (struct mount*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ffs_susp_lock ; 
 scalar_t__ FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *data)
{
	struct fs *fs;
	struct ufsmount *ump;
	struct mount *mp;
	int error;

	FUNC6(&ffs_susp_lock);

	mp = (struct mount *)data;
	ump = FUNC1(mp);
	fs = ump->um_fs;

	if (FUNC3(mp) == 0) {
		FUNC7(&ffs_susp_lock);
		return;
	}

	FUNC0((mp->mnt_kern_flag & MNTK_SUSPEND) != 0,
	    ("MNTK_SUSPEND not set"));

	error = FUNC2(mp, curthread, FFSR_FORCE | FFSR_UNSUSPEND);
	if (error != 0)
		FUNC5("failed to unsuspend writes on %s", fs->fs_fsmnt);

	FUNC4(mp);
	FUNC7(&ffs_susp_lock);
}
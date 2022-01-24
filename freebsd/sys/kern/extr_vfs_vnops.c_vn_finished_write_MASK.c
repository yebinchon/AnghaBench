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
struct mount {int mnt_writeopcount; scalar_t__ mnt_vfs_ops; int mnt_kern_flag; } ;

/* Variables and functions */
 int MNTK_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ref ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  writeopcount ; 

void
FUNC11(struct mount *mp)
{
	int c;

	if (mp == NULL || !FUNC9(mp))
		return;

	if (FUNC7(mp)) {
		FUNC6(mp, writeopcount, 1);
		FUNC6(mp, ref, 1);
		FUNC8(mp);
		return;
	}

	FUNC0(mp);
	FUNC4(mp);
	FUNC2(mp);
	c = --mp->mnt_writeopcount;
	if (mp->mnt_vfs_ops == 0) {
		FUNC3((mp->mnt_kern_flag & MNTK_SUSPEND) == 0);
		FUNC1(mp);
		return;
	}
	if (c < 0)
		FUNC5(mp);
	if ((mp->mnt_kern_flag & MNTK_SUSPEND) != 0 && c == 0)
		FUNC10(&mp->mnt_writeopcount);
	FUNC1(mp);
}
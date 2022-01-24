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
struct vfsops {int dummy; } ;
struct mount {scalar_t__ mnt_tmpfreevnodelistsize; struct vfsops* mnt_op; } ;

/* Variables and functions */
 int MBF_MNTLSTLOCK ; 
 int MBF_NOWAIT ; 
 struct mount* FUNC0 (int /*<<< orphan*/ *) ; 
 struct mount* FUNC1 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 

__attribute__((used)) static void
FUNC7(struct vfsops *mnt_op)
{
	struct mount *mp, *nmp;
	bool need_unbusy;

	FUNC2(&mountlist_mtx);
	for (mp = FUNC0(&mountlist); mp != NULL; mp = nmp) {
		need_unbusy = false;
		if (mnt_op != NULL && mp->mnt_op != mnt_op)
			goto next;
		if (mp->mnt_tmpfreevnodelistsize == 0)
			goto next;
		if (FUNC4(mp, MBF_NOWAIT | MBF_MNTLSTLOCK) == 0) {
			FUNC6(mp);
			need_unbusy = true;
			FUNC2(&mountlist_mtx);
		}
next:
		nmp = FUNC1(mp, mnt_list);
		if (need_unbusy)
			FUNC5(mp);
	}
	FUNC3(&mountlist_mtx);
}
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
struct thread {int dummy; } ;
struct sync_args {int dummy; } ;
struct mount {int mnt_flag; } ;

/* Variables and functions */
 int MBF_MNTLSTLOCK ; 
 int MBF_NOWAIT ; 
 int /*<<< orphan*/  MNT_NOWAIT ; 
 int MNT_RDONLY ; 
 struct mount* FUNC0 (int /*<<< orphan*/ *) ; 
 struct mount* FUNC1 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDP_SYNCIO ; 
 int /*<<< orphan*/  FUNC2 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct mount**,int /*<<< orphan*/ ) ; 

int
FUNC12(struct thread *td, struct sync_args *uap)
{
	struct mount *mp, *nmp;
	int save;

	FUNC5(&mountlist_mtx);
	for (mp = FUNC0(&mountlist); mp != NULL; mp = nmp) {
		if (FUNC7(mp, MBF_NOWAIT | MBF_MNTLSTLOCK)) {
			nmp = FUNC1(mp, mnt_list);
			continue;
		}
		if ((mp->mnt_flag & MNT_RDONLY) == 0 &&
		    FUNC11(NULL, &mp, V_NOWAIT) == 0) {
			save = FUNC4(TDP_SYNCIO);
			FUNC8(mp, MNT_NOWAIT);
			FUNC2(mp, MNT_NOWAIT);
			FUNC3(save);
			FUNC10(mp);
		}
		FUNC5(&mountlist_mtx);
		nmp = FUNC1(mp, mnt_list);
		FUNC9(mp);
	}
	FUNC6(&mountlist_mtx);
	return (0);
}
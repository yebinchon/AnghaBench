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
typedef  scalar_t__ time_t ;
struct thread {int dummy; } ;
struct sbuf {int dummy; } ;
struct mount {scalar_t__ mnt_time; } ;
struct TYPE_2__ {int /*<<< orphan*/  pr_mtx; int /*<<< orphan*/  pr_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 struct mount* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mount* FUNC2 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  mountroot ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ prison0 ; 
 int /*<<< orphan*/  root_holds_mtx ; 
 int /*<<< orphan*/  root_mount_complete ; 
 int /*<<< orphan*/  rootvnode ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*) ; 
 struct sbuf* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sbuf*) ; 
 int FUNC15 (struct thread*,struct mount**) ; 
 int FUNC16 (struct sbuf*,struct mount*) ; 
 int FUNC17 (struct thread*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct thread*,struct mount*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

void
FUNC21(void)
{
	struct mount *mp;
	struct sbuf *sb;
	struct thread *td;
	time_t timebase;
	int error;
	
	FUNC7(&Giant, MA_NOTOWNED);

	FUNC3();

	td = curthread;

	sb = FUNC13();
	FUNC14(sb);
	FUNC12(sb);

	error = FUNC15(td, &mp);
	while (!error) {
		error = FUNC16(sb, mp);
		if (!error) {
			FUNC18(td, mp);
			FUNC10(sb);
			error = FUNC17(td, sb);
			FUNC12(sb);
		}
	}

	FUNC11(sb);

	/*
	 * Iterate over all currently mounted file systems and use
	 * the time stamp found to check and/or initialize the RTC.
	 * Call inittodr() only once and pass it the largest of the
	 * timestamps we encounter.
	 */
	timebase = 0;
	FUNC8(&mountlist_mtx);
	mp = FUNC1(&mountlist);
	while (mp != NULL) {
		if (mp->mnt_time > timebase)
			timebase = mp->mnt_time;
		mp = FUNC2(mp, mnt_list);
	}
	FUNC9(&mountlist_mtx);
	FUNC6(timebase);

	/* Keep prison0's root in sync with the global rootvnode. */
	FUNC8(&prison0.pr_mtx);
	prison0.pr_root = rootvnode;
	FUNC19(prison0.pr_root);
	FUNC9(&prison0.pr_mtx);

	FUNC8(&root_holds_mtx);
	FUNC5(&root_mount_complete, 1);
	FUNC20(&root_mount_complete);
	FUNC9(&root_holds_mtx);

	FUNC0(mountroot);

	FUNC4();
}
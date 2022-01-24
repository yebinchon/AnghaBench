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
struct mount {int dummy; } ;
struct TYPE_2__ {int v_page_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MBF_MNTLSTLOCK ; 
 int MBF_NOWAIT ; 
 int PDROP ; 
 int /*<<< orphan*/  PPAUSE ; 
 int /*<<< orphan*/  PRI_USER ; 
 int PVFS ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_FIRST ; 
 struct mount* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mount* FUNC2 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMA_RECLAIM_DRAIN ; 
 unsigned long desiredvnodes ; 
 unsigned long freevnodes ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kproc_shutdown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long numvnodes ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 
 int vhiwat ; 
 int vlowat ; 
 scalar_t__ FUNC12 (struct mount*,int,int) ; 
 TYPE_1__ vm_cnt ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnlru_nowhere ; 
 int /*<<< orphan*/  vnlruproc ; 
 scalar_t__ vnlruproc_sig ; 
 int /*<<< orphan*/  vnode_free_list_mtx ; 
 int vsmalltrigger ; 
 int FUNC14 () ; 
 scalar_t__ vstir ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC16(void)
{
	struct mount *mp, *nmp;
	unsigned long onumvnodes;
	int done, force, trigger, usevnodes, vsp;
	bool reclaim_nc_src;

	FUNC0(shutdown_pre_sync, kproc_shutdown, vnlruproc,
	    SHUTDOWN_PRI_FIRST);

	force = 0;
	for (;;) {
		FUNC4(vnlruproc);
		FUNC6(&vnode_free_list_mtx);
		/*
		 * If numvnodes is too large (due to desiredvnodes being
		 * adjusted using its sysctl, or emergency growth), first
		 * try to reduce it by discarding from the free list.
		 */
		if (numvnodes > desiredvnodes)
			FUNC13(numvnodes - desiredvnodes, NULL);
		/*
		 * Sleep if the vnode cache is in a good state.  This is
		 * when it is not over-full and has space for about a 4%
		 * or 9% expansion (by growing its size or inexcessively
		 * reducing its free list).  Otherwise, try to reclaim
		 * space for a 10% expansion.
		 */
		if (vstir && force == 0) {
			force = 1;
			vstir = 0;
		}
		vsp = FUNC14();
		if (vsp >= vlowat && force == 0) {
			vnlruproc_sig = 0;
			FUNC15(&vnlruproc_sig);
			FUNC5(vnlruproc, &vnode_free_list_mtx,
			    PVFS|PDROP, "vlruwt", hz);
			continue;
		}
		FUNC7(&vnode_free_list_mtx);
		done = 0;
		onumvnodes = numvnodes;
		/*
		 * Calculate parameters for recycling.  These are the same
		 * throughout the loop to give some semblance of fairness.
		 * The trigger point is to avoid recycling vnodes with lots
		 * of resident pages.  We aren't trying to free memory; we
		 * are trying to recycle or at least free vnodes.
		 */
		if (numvnodes <= desiredvnodes)
			usevnodes = numvnodes - freevnodes;
		else
			usevnodes = numvnodes;
		if (usevnodes <= 0)
			usevnodes = 1;
		/*
		 * The trigger value is is chosen to give a conservatively
		 * large value to ensure that it alone doesn't prevent
		 * making progress.  The value can easily be so large that
		 * it is effectively infinite in some congested and
		 * misconfigured cases, and this is necessary.  Normally
		 * it is about 8 to 100 (pages), which is quite large.
		 */
		trigger = vm_cnt.v_page_count * 2 / usevnodes;
		if (force < 2)
			trigger = vsmalltrigger;
		reclaim_nc_src = force >= 3;
		FUNC6(&mountlist_mtx);
		for (mp = FUNC1(&mountlist); mp != NULL; mp = nmp) {
			if (FUNC10(mp, MBF_NOWAIT | MBF_MNTLSTLOCK)) {
				nmp = FUNC2(mp, mnt_list);
				continue;
			}
			done += FUNC12(mp, reclaim_nc_src, trigger);
			FUNC6(&mountlist_mtx);
			nmp = FUNC2(mp, mnt_list);
			FUNC11(mp);
		}
		FUNC7(&mountlist_mtx);
		if (onumvnodes > desiredvnodes && numvnodes <= desiredvnodes)
			FUNC9(UMA_RECLAIM_DRAIN);
		if (done == 0) {
			if (force == 0 || force == 1) {
				force = 2;
				continue;
			}
			if (force == 2) {
				force = 3;
				continue;
			}
			force = 0;
			vnlru_nowhere++;
			FUNC8(vnlruproc, PPAUSE, "vlrup", hz * 3);
		} else
			FUNC3(PRI_USER);
		/*
		 * After becoming active to expand above low water, keep
		 * active until above high water.
		 */
		vsp = FUNC14();
		force = vsp < vhiwat;
	}
}
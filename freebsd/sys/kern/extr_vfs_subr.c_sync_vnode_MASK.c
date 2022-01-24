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
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct synclist {int dummy; } ;
struct mount {int dummy; } ;
struct bufobj {int bo_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int BO_ONWORKLST ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 struct bufobj* FUNC2 (struct synclist*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  MNT_LAZY ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ,struct thread*) ; 
 scalar_t__ FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_NOWAIT ; 
 struct vnode* FUNC8 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_mtx ; 
 int /*<<< orphan*/  syncdelay ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct mount*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*,int) ; 
 scalar_t__ FUNC15 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct bufobj*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct synclist *slp, struct bufobj **bo, struct thread *td)
{
	struct vnode *vp;
	struct mount *mp;

	*bo = FUNC2(slp);
	if (*bo == NULL)
		return (0);
	vp = FUNC8(*bo);
	if (FUNC6(vp) != 0 || FUNC3(vp) == 0)
		return (1);
	/*
	 * We use vhold in case the vnode does not
	 * successfully sync.  vhold prevents the vnode from
	 * going away when we unlock the sync_mtx so that
	 * we can acquire the vnode interlock.
	 */
	FUNC12(vp);
	FUNC10(&sync_mtx);
	FUNC4(vp);
	if (FUNC15(vp, &mp, V_NOWAIT) != 0) {
		FUNC11(vp);
		FUNC9(&sync_mtx);
		return (*bo == FUNC2(slp));
	}
	FUNC14(vp, LK_EXCLUSIVE | LK_RETRY);
	(void) FUNC5(vp, MNT_LAZY, td);
	FUNC7(vp, 0);
	FUNC13(mp);
	FUNC0(*bo);
	if (((*bo)->bo_flag & BO_ONWORKLST) != 0) {
		/*
		 * Put us back on the worklist.  The worklist
		 * routine will remove us from our current
		 * position and then add us back in at a later
		 * position.
		 */
		FUNC16(*bo, syncdelay);
	}
	FUNC1(*bo);
	FUNC11(vp);
	FUNC9(&sync_mtx);
	return (0);
}
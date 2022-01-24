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
struct vop_fsync_args {scalar_t__ a_waitfor; struct vnode* a_vp; } ;
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; struct mount* v_mount; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int /*<<< orphan*/  MBF_NOWAIT ; 
 scalar_t__ MNT_LAZY ; 
 int /*<<< orphan*/  MNT_NOWAIT ; 
 int /*<<< orphan*/  TDP_SYNCIO ; 
 int FUNC2 (struct mount*,scalar_t__) ; 
 int /*<<< orphan*/  V_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syncdelay ; 
 scalar_t__ FUNC5 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct mount**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bufobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 

__attribute__((used)) static int
FUNC12(struct vop_fsync_args *ap)
{
	struct vnode *syncvp = ap->a_vp;
	struct mount *mp = syncvp->v_mount;
	int error, save;
	struct bufobj *bo;

	/*
	 * We only need to do something if this is a lazy evaluation.
	 */
	if (ap->a_waitfor != MNT_LAZY)
		return (0);

	/*
	 * Move ourselves to the back of the sync list.
	 */
	bo = &syncvp->v_bufobj;
	FUNC0(bo);
	FUNC10(bo, syncdelay);
	FUNC1(bo);

	/*
	 * Walk the list of vnodes pushing all that are dirty and
	 * not already on the sync list.
	 */
	if (FUNC5(mp, MBF_NOWAIT) != 0)
		return (0);
	if (FUNC9(NULL, &mp, V_NOWAIT) != 0) {
		FUNC7(mp);
		return (0);
	}
	save = FUNC4(TDP_SYNCIO);
	/*
	 * The filesystem at hand may be idle with free vnodes stored in the
	 * batch.  Return them instead of letting them stay there indefinitely.
	 */
	FUNC11(mp);
	FUNC6(mp, MNT_NOWAIT);
	error = FUNC2(mp, MNT_LAZY);
	FUNC3(save);
	FUNC8(mp);
	FUNC7(mp);
	return (error);
}
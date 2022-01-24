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
struct vnode {int v_iflag; scalar_t__ v_holdcnt; struct mount* v_mount; int /*<<< orphan*/ * v_op; } ;
struct vfsops {int dummy; } ;
struct mount {struct vfsops* mnt_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct vnode* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int VI_ACTIVE ; 
 int VI_FREE ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  freevnodes ; 
 int max_vnlru_free ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  v_actfreelist ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct vfsops*) ; 
 int /*<<< orphan*/  vnode_free_list ; 
 int /*<<< orphan*/  vnode_free_list_mtx ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

__attribute__((used)) static void
FUNC15(int count, struct vfsops *mnt_op)
{
	struct vnode *vp;
	struct mount *mp;
	bool tried_batches;

	tried_batches = false;
	FUNC8(&vnode_free_list_mtx, MA_OWNED);
	if (count > max_vnlru_free)
		count = max_vnlru_free;
	for (; count > 0; count--) {
		vp = FUNC1(&vnode_free_list);
		/*
		 * The list can be modified while the free_list_mtx
		 * has been dropped and vp could be NULL here.
		 */
		if (vp == NULL) {
			if (tried_batches)
				break;
			FUNC10(&vnode_free_list_mtx);
			FUNC13(mnt_op);
			tried_batches = true;
			FUNC9(&vnode_free_list_mtx);
			continue;
		}

		FUNC6(vp->v_op != NULL, vp,
		    ("vnlru_free: vnode already reclaimed."));
		FUNC0((vp->v_iflag & VI_FREE) != 0,
		    ("Removing vnode not on freelist"));
		FUNC0((vp->v_iflag & VI_ACTIVE) == 0,
		    ("Mangling active vnode"));
		FUNC3(&vnode_free_list, vp, v_actfreelist);

		/*
		 * Don't recycle if our vnode is from different type
		 * of mount point.  Note that mp is type-safe, the
		 * check does not reach unmapped address even if
		 * vnode is reclaimed.
		 * Don't recycle if we can't get the interlock without
		 * blocking.
		 */
		if ((mnt_op != NULL && (mp = vp->v_mount) != NULL &&
		    mp->mnt_op != mnt_op) || !FUNC4(vp)) {
			FUNC2(&vnode_free_list, vp, v_actfreelist);
			continue;
		}
		FUNC6((vp->v_iflag & VI_FREE) != 0 && vp->v_holdcnt == 0,
		    vp, ("vp inconsistent on freelist"));

		/*
		 * The clear of VI_FREE prevents activation of the
		 * vnode.  There is no sense in putting the vnode on
		 * the mount point active list, only to remove it
		 * later during recycling.  Inline the relevant part
		 * of vholdl(), to avoid triggering assertions or
		 * activating.
		 */
		freevnodes--;
		vp->v_iflag &= ~VI_FREE;
		FUNC7();
		FUNC11(&vp->v_holdcnt);

		FUNC10(&vnode_free_list_mtx);
		FUNC5(vp);
		FUNC14(vp);
		/*
		 * If the recycled succeeded this vdrop will actually free
		 * the vnode.  If not it will simply place it back on
		 * the free list.
		 */
		FUNC12(vp);
		FUNC9(&vnode_free_list_mtx);
	}
}
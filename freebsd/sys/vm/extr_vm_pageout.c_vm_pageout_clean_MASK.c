#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct vnode {scalar_t__ v_type; TYPE_2__* v_object; int /*<<< orphan*/  v_mount; } ;
struct mount {int dummy; } ;
struct TYPE_19__ {scalar_t__ type; struct vnode* handle; } ;
struct TYPE_18__ {scalar_t__ pindex; scalar_t__ dirty; TYPE_2__* object; } ;

/* Variables and functions */
 int EBUSY ; 
 int EDEADLK ; 
 int EIO ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_SHARED ; 
 int LK_TIMELOCK ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ OBJT_VNODE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  V_NOWAIT ; 
 int /*<<< orphan*/  curthread ; 
 scalar_t__ FUNC5 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct mount*) ; 
 scalar_t__ FUNC18 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*) ; 

__attribute__((used)) static int
FUNC20(vm_page_t m, int *numpagedout)
{
	struct vnode *vp;
	struct mount *mp;
	vm_object_t object;
	vm_pindex_t pindex;
	int error, lockmode;

	FUNC8(m);
	object = m->object;
	FUNC2(object);
	error = 0;
	vp = NULL;
	mp = NULL;

	/*
	 * The object is already known NOT to be dead.   It
	 * is possible for the vget() to block the whole
	 * pageout daemon, but the new low-memory handling
	 * code should prevent it.
	 *
	 * We can't wait forever for the vnode lock, we might
	 * deadlock due to a vn_read() getting stuck in
	 * vm_wait while holding this vnode.  We skip the 
	 * vnode if we can't get it in a reasonable amount
	 * of time.
	 */
	if (object->type == OBJT_VNODE) {
		FUNC14(m);
		FUNC15(m);
		vp = object->handle;
		if (vp->v_type == VREG &&
		    FUNC18(vp, &mp, V_NOWAIT) != 0) {
			mp = NULL;
			error = EDEADLK;
			goto unlock_all;
		}
		FUNC0(mp != NULL,
		    ("vp %p with NULL v_mount", vp));
		FUNC7(object);
		pindex = m->pindex;
		FUNC4(object);
		lockmode = FUNC1(vp->v_mount) ?
		    LK_SHARED : LK_EXCLUSIVE;
		if (FUNC5(vp, lockmode | LK_TIMELOCK, curthread)) {
			vp = NULL;
			error = EDEADLK;
			goto unlock_mp;
		}
		FUNC3(object);

		/*
		 * Ensure that the object and vnode were not disassociated
		 * while locks were dropped.
		 */
		if (vp->v_object != object) {
			error = ENOENT;
			goto unlock_all;
		}
		FUNC10(m);

		/*
		 * While the object and page were unlocked, the page
		 * may have been:
		 * (1) moved to a different queue,
		 * (2) reallocated to a different object,
		 * (3) reallocated to a different offset, or
		 * (4) cleaned.
		 */
		if (!FUNC9(m) || m->object != object ||
		    m->pindex != pindex || m->dirty == 0) {
			FUNC14(m);
			error = ENXIO;
			goto unlock_all;
		}

		/*
		 * The page may have been busied while the object and page
		 * locks were released.
		 */
		if (FUNC13(m) == 0) {
			FUNC14(m);
			error = EBUSY;
			goto unlock_all;
		}
	}

	/*
	 * Remove all writeable mappings, failing if the page is wired.
	 */
	if (!FUNC12(m)) {
		FUNC15(m);
		FUNC14(m);
		error = EBUSY;
		goto unlock_all;
	}
	FUNC14(m);

	/*
	 * If a page is dirty, then it is either being washed
	 * (but not yet cleaned) or it is still in the
	 * laundry.  If it is still in the laundry, then we
	 * start the cleaning operation. 
	 */
	if ((*numpagedout = FUNC16(m)) == 0)
		error = EIO;

unlock_all:
	FUNC4(object);

unlock_mp:
	FUNC11(m, MA_NOTOWNED);
	if (mp != NULL) {
		if (vp != NULL)
			FUNC19(vp);
		FUNC6(object);
		FUNC17(mp);
	}

	return (error);
}
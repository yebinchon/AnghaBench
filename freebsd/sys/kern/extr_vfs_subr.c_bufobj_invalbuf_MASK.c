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
struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {scalar_t__ bo_numoutput; TYPE_1__ bo_dirty; TYPE_1__ bo_clean; int /*<<< orphan*/ * bo_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int FUNC1 (struct bufobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufobj*) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  OBJPR_CLEANONLY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int V_ALLOWCLEAN ; 
 int V_ALT ; 
 int V_CLEANONLY ; 
 int V_NORMAL ; 
 int V_SAVE ; 
 int V_VMIO ; 
 int FUNC5 (struct bufobj*,int,int) ; 
 int FUNC6 (TYPE_1__*,int,struct bufobj*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

int
FUNC10(struct bufobj *bo, int flags, int slpflag, int slptimeo)
{
	int error;

	FUNC0(bo);
	if (flags & V_SAVE) {
		error = FUNC5(bo, slpflag, slptimeo);
		if (error) {
			FUNC2(bo);
			return (error);
		}
		if (bo->bo_dirty.bv_cnt > 0) {
			FUNC2(bo);
			if ((error = FUNC1(bo, MNT_WAIT)) != 0)
				return (error);
			/*
			 * XXX We could save a lock/unlock if this was only
			 * enabled under INVARIANTS
			 */
			FUNC0(bo);
			if (bo->bo_numoutput > 0 || bo->bo_dirty.bv_cnt > 0)
				FUNC7("vinvalbuf: dirty bufs");
		}
	}
	/*
	 * If you alter this loop please notice that interlock is dropped and
	 * reacquired in flushbuflist.  Special care is needed to ensure that
	 * no race conditions occur from this.
	 */
	do {
		error = FUNC6(&bo->bo_clean,
		    flags, bo, slpflag, slptimeo);
		if (error == 0 && !(flags & V_CLEANONLY))
			error = FUNC6(&bo->bo_dirty,
			    flags, bo, slpflag, slptimeo);
		if (error != 0 && error != EAGAIN) {
			FUNC2(bo);
			return (error);
		}
	} while (error != 0);

	/*
	 * Wait for I/O to complete.  XXX needs cleaning up.  The vnode can
	 * have write I/O in-progress but if there is a VM object then the
	 * VM object can also have read-I/O in-progress.
	 */
	do {
		FUNC5(bo, 0, 0);
		if ((flags & V_VMIO) == 0 && bo->bo_object != NULL) {
			FUNC2(bo);
			FUNC9(bo->bo_object, "bovlbx");
			FUNC0(bo);
		}
	} while (bo->bo_numoutput > 0);
	FUNC2(bo);

	/*
	 * Destroy the copy in the VM cache, too.
	 */
	if (bo->bo_object != NULL &&
	    (flags & (V_ALT | V_NORMAL | V_CLEANONLY | V_VMIO)) == 0) {
		FUNC3(bo->bo_object);
		FUNC8(bo->bo_object, 0, 0, (flags & V_SAVE) ?
		    OBJPR_CLEANONLY : 0);
		FUNC4(bo->bo_object);
	}

#ifdef INVARIANTS
	BO_LOCK(bo);
	if ((flags & (V_ALT | V_NORMAL | V_CLEANONLY | V_VMIO |
	    V_ALLOWCLEAN)) == 0 && (bo->bo_dirty.bv_cnt > 0 ||
	    bo->bo_clean.bv_cnt > 0))
		panic("vinvalbuf: flush failed");
	if ((flags & (V_ALT | V_NORMAL | V_CLEANONLY | V_VMIO)) == 0 &&
	    bo->bo_dirty.bv_cnt > 0)
		panic("vinvalbuf: flush dirty failed");
	BO_UNLOCK(bo);
#endif
	return (0);
}
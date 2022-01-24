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
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  TRUE ; 
 int VM_ALLOC_IGN_SBUSY ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NOCREAT ; 
 int VM_ALLOC_NOWAIT ; 
 int VM_ALLOC_SBUSY ; 
 int VM_ALLOC_WAITFAIL ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_PAGER_FAIL ; 
 int VM_PAGER_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC21(vm_page_t *mp, vm_object_t object, vm_pindex_t pindex, int allocflags)
{
	vm_page_t m;
	bool sleep, xbusy;
	int pflags;
	int rv;

	FUNC0((allocflags & VM_ALLOC_SBUSY) == 0 ||
	    (allocflags & VM_ALLOC_IGN_SBUSY) != 0,
	    ("vm_page_grab_valid: VM_ALLOC_SBUSY/VM_ALLOC_IGN_SBUSY mismatch"));
	FUNC0((allocflags &
	    (VM_ALLOC_NOWAIT | VM_ALLOC_WAITFAIL | VM_ALLOC_ZERO)) == 0,
	    ("vm_page_grab_valid: Invalid flags 0x%X", allocflags));
	FUNC2(object);
	pflags = allocflags & ~(VM_ALLOC_NOBUSY | VM_ALLOC_SBUSY);
	pflags |= VM_ALLOC_WAITFAIL;

retrylookup:
	xbusy = false;
	if ((m = FUNC11(object, pindex)) != NULL) {
		/*
		 * If the page is fully valid it can only become invalid
		 * with the object lock held.  If it is not valid it can
		 * become valid with the busy lock held.  Therefore, we
		 * may unnecessarily lock the exclusive busy here if we
		 * race with I/O completion not using the object lock.
		 * However, we will not end up with an invalid page and a
		 * shared lock.
		 */
		if (!FUNC5(m) ||
		    (allocflags & (VM_ALLOC_IGN_SBUSY | VM_ALLOC_SBUSY)) == 0) {
			sleep = !FUNC14(m);
			xbusy = true;
		} else
			sleep = !FUNC13(m);
		if (sleep) {
			/*
			 * Reference the page before unlocking and
			 * sleeping so that the page daemon is less
			 * likely to reclaim it.
			 */
			if ((allocflags & VM_ALLOC_NOCREAT) == 0)
				FUNC4(m, PGA_REFERENCED);
			FUNC9(m, "pgrbwt", (allocflags &
			    VM_ALLOC_IGN_SBUSY) != 0);
			FUNC3(object);
			goto retrylookup;
		}
		if ((allocflags & VM_ALLOC_NOCREAT) != 0 &&
		   !FUNC5(m)) {
			if (xbusy)
				FUNC17(m);
			else
				FUNC12(m);
			*mp = NULL;
			return (VM_PAGER_FAIL);
		}
		if ((allocflags & VM_ALLOC_WIRED) != 0)
			FUNC16(m);
		if (FUNC5(m))
			goto out;
	} else if ((allocflags & VM_ALLOC_NOCREAT) != 0) {
		*mp = NULL;
		return (VM_PAGER_FAIL);
	} else if ((m = FUNC6(object, pindex, pflags)) != NULL) {
		xbusy = true;
	} else {
		goto retrylookup;
	}

	FUNC7(m);
	FUNC1(xbusy);
	if (FUNC20(object, pindex, NULL, NULL)) {
		rv = FUNC19(object, &m, 1, NULL, NULL);
		if (rv != VM_PAGER_OK) {
			if (allocflags & VM_ALLOC_WIRED)
				FUNC15(m);
			FUNC10(m);
			*mp = NULL;
			return (rv);
		}
		FUNC1(FUNC5(m));
	} else {
		FUNC18(m, TRUE);
	}
out:
	if ((allocflags & VM_ALLOC_NOBUSY) != 0) {
		if (xbusy)
			FUNC17(m);
		else
			FUNC12(m);
	}
	if ((allocflags & VM_ALLOC_SBUSY) != 0 && xbusy)
		FUNC8(m);
	*mp = m;
	return (VM_PAGER_OK);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct TYPE_13__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int PG_ZERO ; 
 int VM_ALLOC_IGN_SBUSY ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NOCREAT ; 
 int VM_ALLOC_NOWAIT ; 
 int VM_ALLOC_SBUSY ; 
 int VM_ALLOC_WAITFAIL ; 
 int VM_ALLOC_WAITOK ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

vm_page_t
FUNC13(vm_object_t object, vm_pindex_t pindex, int allocflags)
{
	vm_page_t m;
	int sleep;
	int pflags;

	FUNC1(object);
	FUNC0((allocflags & VM_ALLOC_SBUSY) == 0 ||
	    (allocflags & VM_ALLOC_IGN_SBUSY) != 0,
	    ("vm_page_grab: VM_ALLOC_SBUSY/VM_ALLOC_IGN_SBUSY mismatch"));
	pflags = allocflags &
	    ~(VM_ALLOC_NOWAIT | VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL |
	    VM_ALLOC_NOBUSY);
	if ((allocflags & VM_ALLOC_NOWAIT) == 0)
		pflags |= VM_ALLOC_WAITFAIL;
	if ((allocflags & VM_ALLOC_IGN_SBUSY) != 0)
		pflags |= VM_ALLOC_SBUSY;
retrylookup:
	if ((m = FUNC7(object, pindex)) != NULL) {
		if ((allocflags & (VM_ALLOC_IGN_SBUSY | VM_ALLOC_SBUSY)) != 0)
			sleep = !FUNC9(m);
		else
			sleep = !FUNC10(m);
		if (sleep) {
			if ((allocflags & VM_ALLOC_NOWAIT) != 0)
				return (NULL);
			/*
			 * Reference the page before unlocking and
			 * sleeping so that the page daemon is less
			 * likely to reclaim it.
			 */
			if ((allocflags & VM_ALLOC_NOCREAT) == 0)
				FUNC4(m, PGA_REFERENCED);
			FUNC6(m, "pgrbwt", (allocflags &
			    VM_ALLOC_IGN_SBUSY) != 0);
			FUNC2(object);
			if ((allocflags & VM_ALLOC_WAITFAIL) != 0)
				return (NULL);
			goto retrylookup;
		} else {
			if ((allocflags & VM_ALLOC_WIRED) != 0)
				FUNC11(m);
			goto out;
		}
	}
	if ((allocflags & VM_ALLOC_NOCREAT) != 0)
		return (NULL);
	m = FUNC5(object, pindex, pflags);
	if (m == NULL) {
		if ((allocflags & VM_ALLOC_NOWAIT) != 0)
			return (NULL);
		goto retrylookup;
	}
	if (allocflags & VM_ALLOC_ZERO && (m->flags & PG_ZERO) == 0)
		FUNC3(m);

out:
	if ((allocflags & VM_ALLOC_NOBUSY) != 0) {
		if ((allocflags & VM_ALLOC_IGN_SBUSY) != 0)
			FUNC8(m);
		else
			FUNC12(m);
	}
	return (m);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int u_int ;
struct TYPE_26__ {int /*<<< orphan*/  rtree; } ;
struct TYPE_25__ {scalar_t__ pindex; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int PG_ZERO ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int VM_ALLOC_COUNT_SHIFT ; 
 int VM_ALLOC_IGN_SBUSY ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NOCREAT ; 
 int VM_ALLOC_NOWAIT ; 
 int VM_ALLOC_SBUSY ; 
 int VM_ALLOC_WAITFAIL ; 
 int VM_ALLOC_WAITOK ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  pglist ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC18(vm_object_t object, vm_pindex_t pindex, int allocflags,
    vm_page_t *ma, int count)
{
	vm_page_t m, mpred;
	int pflags;
	int i;
	bool sleep;

	FUNC3(object);
	FUNC0(((u_int)allocflags >> VM_ALLOC_COUNT_SHIFT) == 0,
	    ("vm_page_grap_pages: VM_ALLOC_COUNT() is not allowed"));
	FUNC0((allocflags & VM_ALLOC_NOBUSY) == 0 ||
	    (allocflags & VM_ALLOC_WIRED) != 0,
	    ("vm_page_grab_pages: the pages must be busied or wired"));
	FUNC0((allocflags & VM_ALLOC_SBUSY) == 0 ||
	    (allocflags & VM_ALLOC_IGN_SBUSY) != 0,
	    ("vm_page_grab_pages: VM_ALLOC_SBUSY/IGN_SBUSY mismatch"));
	if (count == 0)
		return (0);
	pflags = allocflags &
	    ~(VM_ALLOC_NOWAIT | VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL |
	    VM_ALLOC_NOBUSY);
	if ((allocflags & VM_ALLOC_NOWAIT) == 0)
		pflags |= VM_ALLOC_WAITFAIL;
	if ((allocflags & VM_ALLOC_IGN_SBUSY) != 0)
		pflags |= VM_ALLOC_SBUSY;
	i = 0;
retrylookup:
	m = FUNC17(&object->rtree, pindex + i);
	if (m == NULL || m->pindex != pindex + i) {
		mpred = m;
		m = NULL;
	} else
		mpred = FUNC1(m, pglist, listq);
	for (; i < count; i++) {
		if (m != NULL) {
			if ((allocflags &
			    (VM_ALLOC_SBUSY | VM_ALLOC_IGN_SBUSY)) != 0)
				sleep = !FUNC12(m);
			else
				sleep = !FUNC13(m);
			if (sleep) {
				if ((allocflags & VM_ALLOC_NOWAIT) != 0)
					break;
				/*
				 * Reference the page before unlocking and
				 * sleeping so that the page daemon is less
				 * likely to reclaim it.
				 */
				if ((allocflags & VM_ALLOC_NOCREAT) == 0)
					FUNC6(m, PGA_REFERENCED);
				FUNC8(m, "grbmaw", (allocflags &
				    VM_ALLOC_IGN_SBUSY) != 0);
				FUNC4(object);
				goto retrylookup;
			}
			if ((allocflags & VM_ALLOC_WIRED) != 0)
				FUNC15(m);
		} else {
			if ((allocflags & VM_ALLOC_NOCREAT) != 0)
				break;
			m = FUNC7(object, pindex + i,
			    pflags | FUNC2(count - i), mpred);
			if (m == NULL) {
				if ((allocflags & VM_ALLOC_NOWAIT) != 0)
					break;
				goto retrylookup;
			}
		}
		if (FUNC10(m) &&
		    (allocflags & VM_ALLOC_ZERO) != 0) {
			if ((m->flags & PG_ZERO) == 0)
				FUNC5(m);
			FUNC14(m);
		}
		if ((allocflags & VM_ALLOC_NOBUSY) != 0) {
			if ((allocflags & VM_ALLOC_IGN_SBUSY) != 0)
				FUNC11(m);
			else
				FUNC16(m);
		}
		ma[i] = mpred = m;
		m = FUNC9(m);
	}
	return (i);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct TYPE_7__ {int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TRUE ; 
 int VM_ALLOC_NOWAIT ; 
 int VM_ALLOC_SBUSY ; 
 int VM_ALLOC_WAITFAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

int
FUNC8(vm_page_t m, int allocflags)
{
	vm_object_t obj;
	bool locked;

	/*
	 * The page-specific object must be cached because page
	 * identity can change during the sleep, causing the
	 * re-lock of a different object.
	 * It is assumed that a reference to the object is already
	 * held by the callers.
	 */
	obj = m->object;
	for (;;) {
		if ((allocflags & VM_ALLOC_SBUSY) == 0) {
			if (FUNC6(m))
				return (TRUE);
		} else {
			if (FUNC5(m))
				return (TRUE);
		}
		if ((allocflags & VM_ALLOC_NOWAIT) != 0)
			return (FALSE);
		if (obj != NULL)
			locked = FUNC3(obj);
		else
			locked = FALSE;
		FUNC1(locked || FUNC7(m));
		FUNC4(obj, m, "vmpba",
		    (allocflags & VM_ALLOC_SBUSY) != 0, locked);
		if (locked)
			FUNC2(obj);
		if ((allocflags & VM_ALLOC_WAITFAIL) != 0)
			return (FALSE);
		FUNC0(m->object == obj || m->object == NULL,
		    ("vm_page_busy_acquire: page %p does not belong to %p",
		    m, obj));
	}
}
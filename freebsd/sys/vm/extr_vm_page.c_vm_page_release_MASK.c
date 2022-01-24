#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  int u_int ;
struct TYPE_9__ {int oflags; int ref_count; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int VPO_UNMANAGED ; 
 int FUNC3 (int) ; 
 int VPR_TRYFREE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

void
FUNC14(vm_page_t m, int flags)
{
	vm_object_t object;
	u_int old;
	bool locked;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("vm_page_release: page %p is unmanaged", m));

	if ((flags & VPR_TRYFREE) != 0) {
		for (;;) {
			object = (vm_object_t)FUNC6(&m->object);
			if (object == NULL)
				break;
			/* Depends on type-stability. */
			if (FUNC7(m) || !FUNC1(object)) {
				object = NULL;
				break;
			}
			if (object == m->object)
				break;
			FUNC2(object);
		}
		if (FUNC4(object != NULL)) {
			FUNC10(m, flags);
			FUNC2(object);
			return;
		}
	}

	/*
	 * Update LRU state before releasing the wiring reference.
	 * Use a release store when updating the reference count to
	 * synchronize with vm_page_free_prep().
	 */
	old = m->ref_count;
	locked = false;
	do {
		FUNC0(FUNC3(old) > 0,
		    ("vm_page_unwire: wire count underflow for page %p", m));
		if (!locked && FUNC3(old) == 1) {
			FUNC9(m);
			locked = true;
			FUNC11(m, flags);
		}
	} while (!FUNC5(&m->ref_count, &old, old - 1));

	/*
	 * Release the lock only after the wiring is released, to ensure that
	 * the page daemon does not encounter and dequeue the page while it is
	 * still wired.
	 */
	if (locked)
		FUNC12(m);

	if (FUNC3(old) == 1) {
		FUNC13(1);
		if (old == 1)
			FUNC8(m);
	}
}
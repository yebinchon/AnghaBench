#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ uint8_t ;
typedef  int u_int ;
struct TYPE_10__ {int oflags; scalar_t__ ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PQ_ACTIVE ; 
 scalar_t__ PQ_COUNT ; 
 int VPO_UNMANAGED ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void
FUNC11(vm_page_t m, uint8_t queue)
{
	u_int old;
	bool locked;

	FUNC0(queue < PQ_COUNT,
	    ("vm_page_unwire: invalid queue %u request for page %p", queue, m));

	if ((m->oflags & VPO_UNMANAGED) != 0) {
		if (FUNC9(m) && m->ref_count == 0)
			FUNC3(m);
		return;
	}

	/*
	 * Update LRU state before releasing the wiring reference.
	 * We only need to do this once since we hold the page lock.
	 * Use a release store when updating the reference count to
	 * synchronize with vm_page_free_prep().
	 */
	old = m->ref_count;
	locked = false;
	do {
		FUNC0(FUNC1(old) > 0,
		    ("vm_page_unwire: wire count underflow for page %p", m));
		if (!locked && FUNC1(old) == 1) {
			FUNC4(m);
			locked = true;
			if (queue == PQ_ACTIVE && FUNC6(m) == PQ_ACTIVE)
				FUNC7(m);
			else
				FUNC5(m, queue);
		}
	} while (!FUNC2(&m->ref_count, &old, old - 1));

	/*
	 * Release the lock only after the wiring is released, to ensure that
	 * the page daemon does not encounter and dequeue the page while it is
	 * still wired.
	 */
	if (locked)
		FUNC8(m);

	if (FUNC1(old) == 1) {
		FUNC10(1);
		if (old == 1)
			FUNC3(m);
	}
}
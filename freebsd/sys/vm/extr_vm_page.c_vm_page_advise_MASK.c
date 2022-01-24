#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct TYPE_12__ {scalar_t__ dirty; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int MADV_DONTNEED ; 
 int MADV_FREE ; 
 int MADV_WILLNEED ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void
FUNC10(vm_page_t m, int advice)
{

	FUNC4(m);
	FUNC0(m->object);
	if (advice == MADV_FREE)
		/*
		 * Mark the page clean.  This will allow the page to be freed
		 * without first paging it out.  MADV_FREE pages are often
		 * quickly reused by malloc(3), so we do not do anything that
		 * would result in a page fault on a later access.
		 */
		FUNC9(m);
	else if (advice != MADV_DONTNEED) {
		if (advice == MADV_WILLNEED)
			FUNC2(m);
		return;
	}

	/*
	 * Clear any references to the page.  Otherwise, the page daemon will
	 * immediately reactivate the page.
	 */
	FUNC3(m, PGA_REFERENCED);

	if (advice != MADV_FREE && m->dirty == 0 && FUNC1(m))
		FUNC6(m);

	/*
	 * Place clean pages near the head of the inactive queue rather than
	 * the tail, thus defeating the queue's LRU operation and ensuring that
	 * the page will be reused quickly.  Dirty pages not already in the
	 * laundry are moved there.
	 */
	if (m->dirty == 0)
		FUNC5(m);
	else if (!FUNC7(m))
		FUNC8(m);
}
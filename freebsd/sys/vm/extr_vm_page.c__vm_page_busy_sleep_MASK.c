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
typedef  int u_int ;
struct TYPE_7__ {int busy_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PVM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int VPB_BIT_SHARED ; 
 int VPB_BIT_WAITERS ; 
 int VPB_UNBUSIED ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC10(vm_object_t obj, vm_page_t m, const char *wmesg,
    bool nonshared, bool locked)
{
	u_int x;

	/*
	 * If the object is busy we must wait for that to drain to zero
	 * before trying the page again.
	 */
	if (obj != NULL && FUNC8(obj)) {
		if (locked)
			FUNC2(obj);
		FUNC9(obj, wmesg);
		return;
	}
	FUNC5(m);
	x = m->busy_lock;
	if (x == VPB_UNBUSIED || (nonshared && (x & VPB_BIT_SHARED) != 0) ||
	    ((x & VPB_BIT_WAITERS) == 0 &&
	    !FUNC3(&m->busy_lock, x, x | VPB_BIT_WAITERS))) {
		if (locked)
			FUNC2(obj);
		FUNC6(m);
		return;
	}
	if (locked)
		FUNC2(obj);
	FUNC0();
	FUNC4(m, NULL, wmesg, 0, 0);
	FUNC7(m, PVM);
	FUNC1();
}
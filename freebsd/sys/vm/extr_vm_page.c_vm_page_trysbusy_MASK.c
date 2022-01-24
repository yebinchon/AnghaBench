#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  int u_int ;
struct TYPE_4__ {int busy_lock; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int VPB_BIT_SHARED ; 
 scalar_t__ VPB_ONE_SHARER ; 
 scalar_t__ FUNC0 (int*,int*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(vm_page_t m)
{
	vm_object_t obj;
	u_int x;

	obj = m->object;
	x = m->busy_lock;
	for (;;) {
		if ((x & VPB_BIT_SHARED) == 0)
			return (0);
		/*
		 * Reduce the window for transient busies that will trigger
		 * false negatives in vm_page_ps_test().
		 */
		if (obj != NULL && FUNC1(obj))
			return (0);
		if (FUNC0(&m->busy_lock, &x,
		    x + VPB_ONE_SHARER))
			break;
	}

	/* Refetch the object now that we're guaranteed that it is stable. */
	obj = m->object;
	if (obj != NULL && FUNC1(obj)) {
		FUNC2(m);
		return (0);
	}
	return (1);
}
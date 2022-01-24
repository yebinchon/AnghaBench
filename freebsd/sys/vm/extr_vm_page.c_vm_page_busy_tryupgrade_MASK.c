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
typedef  int u_int ;
struct TYPE_4__ {int busy_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int VPB_BIT_WAITERS ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int VPB_SINGLE_EXCLUSIVER ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(vm_page_t m)
{
	u_int x;

	FUNC4(m);

	x = m->busy_lock;
	for (;;) {
		if (FUNC1(x) > 1)
			return (0);
		FUNC0((x & ~VPB_BIT_WAITERS) == FUNC2(1),
		    ("vm_page_busy_tryupgrade: invalid lock state"));
		if (!FUNC3(&m->busy_lock, &x,
		    VPB_SINGLE_EXCLUSIVER | (x & VPB_BIT_WAITERS)))
			continue;
		return (1);
	}
}
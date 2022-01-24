#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int u_int ;
struct TYPE_5__ {int busy_lock; } ;

/* Variables and functions */
 int VPB_BIT_WAITERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(vm_page_t m)
{
	u_int x;

	FUNC2(m);

	x = m->busy_lock;
	for (;;) {
		if (FUNC1(&m->busy_lock,
		    &x, FUNC0(1)))
			break;
	}
	if ((x & VPB_BIT_WAITERS) != 0)
		FUNC3(m);
}
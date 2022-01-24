#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct TYPE_6__ {int oflags; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PG_FICTITIOUS ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  fakepg_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(vm_page_t m)
{

	FUNC0((m->oflags & VPO_UNMANAGED) != 0, ("managed %p", m));
	FUNC0((m->flags & PG_FICTITIOUS) != 0,
	    ("vm_page_putfake: bad page %p", m));
	if (FUNC2(m))
		FUNC3(m);
	FUNC1(fakepg_zone, m);
}
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
struct TYPE_6__ {int flags; int oflags; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PG_FICTITIOUS ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(vm_page_t m)
{

	FUNC0(m->object == NULL, ("ttm page %p is owned", m));
	FUNC0(FUNC3(m), ("ttm lost wire %p", m));
	FUNC0((m->flags & PG_FICTITIOUS) != 0, ("ttm lost fictitious %p", m));
	FUNC0((m->oflags & VPO_UNMANAGED) == 0, ("ttm got unmanaged %p", m));
	m->flags &= ~PG_FICTITIOUS;
	m->oflags |= VPO_UNMANAGED;
	FUNC2(m);
	FUNC1(m);
}
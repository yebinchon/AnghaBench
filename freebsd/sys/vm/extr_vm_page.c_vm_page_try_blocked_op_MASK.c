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
typedef  int u_int ;
typedef  int /*<<< orphan*/  op ;
struct TYPE_7__ {int oflags; int ref_count; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int VPO_UNMANAGED ; 
 int VPRC_BLOCKED ; 
 int VPRC_OBJREF ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static bool
FUNC7(vm_page_t m, void (*op)(vm_page_t))
{
	u_int old;

	FUNC0(m->object != NULL && (m->oflags & VPO_UNMANAGED) == 0,
	    ("vm_page_try_blocked_op: page %p has no object", m));
	FUNC0(FUNC5(m),
	    ("vm_page_try_blocked_op: page %p is not busy", m));
	FUNC1(m->object);

	old = m->ref_count;
	do {
		FUNC0(old != 0,
		    ("vm_page_try_blocked_op: page %p has no references", m));
		if (FUNC3(old) != 0)
			return (false);
	} while (!FUNC4(&m->ref_count, &old, old | VPRC_BLOCKED));

	(op)(m);

	/*
	 * If the object is read-locked, new wirings may be created via an
	 * object lookup.
	 */
	old = FUNC6(m, VPRC_BLOCKED);
	FUNC0(!FUNC2(m->object) ||
	    old == (VPRC_BLOCKED | VPRC_OBJREF),
	    ("vm_page_try_blocked_op: unexpected refcount value %u for %p",
	    old, m));
	return (true);
}
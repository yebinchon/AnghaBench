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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  ref_count; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VPRC_WIRE_COUNT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(vm_page_t m)
{
	u_int old;

	FUNC0(m->object != NULL,
	    ("vm_page_wire: page %p does not belong to an object", m));
	if (!FUNC4(m))
		FUNC1(m->object);
	FUNC0((m->flags & PG_FICTITIOUS) == 0 ||
	    FUNC2(m->ref_count) >= 1,
	    ("vm_page_wire: fictitious page %p has zero wirings", m));

	old = FUNC3(&m->ref_count, 1);
	FUNC0(FUNC2(old) != VPRC_WIRE_COUNT_MAX,
	    ("vm_page_wire: counter overflow for page %p", m));
	if (FUNC2(old) == 0)
		FUNC5(1);
}
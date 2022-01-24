#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int u_int ;
struct TYPE_3__ {int ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int VPRC_BLOCKED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

bool
FUNC4(vm_page_t m)
{
	u_int old;

	old = m->ref_count;
	do {
		FUNC0(old > 0,
		    ("vm_page_wire_mapped: wiring unreferenced page %p", m));
		if ((old & VPRC_BLOCKED) != 0)
			return (false);
	} while (!FUNC2(&m->ref_count, &old, old + 1));

	if (FUNC1(old) == 0)
		FUNC3(1);
	return (true);
}
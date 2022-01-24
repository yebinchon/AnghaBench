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
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PG_FICTITIOUS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

bool
FUNC4(vm_page_t m)
{
	u_int old;

	old = FUNC2(m, 1);
	FUNC0(FUNC1(old) != 0,
	    ("vm_page_unref: counter underflow for page %p", m));
	FUNC0((m->flags & PG_FICTITIOUS) == 0 || FUNC1(old) > 1,
	    ("vm_page_unref: missing ref on fictitious page %p", m));

	if (FUNC1(old) > 1)
		return (false);
	FUNC3(1);
	return (true);
}
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
typedef  int /*<<< orphan*/  vm_object_t ;
struct TYPE_7__ {int flags; scalar_t__ dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PG_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VM_PAGER_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(vm_object_t object, vm_page_t *m, int count, int *rbehind,
    int *rahead)
{
	int i;

	FUNC1(object);
	for (i = 0; i < count; i++) {
		if (FUNC4(m[i])) {
			if ((m[i]->flags & PG_ZERO) == 0)
				FUNC2(m[i]);
			FUNC5(m[i]);
		}
		FUNC0(FUNC3(m[i]),
		    ("phys_pager_getpages: partially valid page %p", m[i]));
		FUNC0(m[i]->dirty == 0,
		    ("phys_pager_getpages: dirty page %p", m[i]));
	}
	if (rbehind)
		*rbehind = 0;
	if (rahead)
		*rahead = 0;
	return (VM_PAGER_OK);
}
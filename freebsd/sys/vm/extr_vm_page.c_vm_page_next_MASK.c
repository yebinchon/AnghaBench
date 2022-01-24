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
struct TYPE_6__ {scalar_t__ object; scalar_t__ pindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  listq ; 

vm_page_t
FUNC3(vm_page_t m)
{
	vm_page_t next;

	FUNC2(m->object);
	if ((next = FUNC1(m, listq)) != NULL) {
		FUNC0(next->object == m->object);
		if (next->pindex != m->pindex + 1)
			next = NULL;
	}
	return (next);
}
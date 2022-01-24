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
struct TYPE_6__ {int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_PAGE_BITS_ALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

void
FUNC3(vm_page_t m)
{

	FUNC0(m);
	if (FUNC2(m))
		m->valid = VM_PAGE_BITS_ALL;
	else
		FUNC1(m, &m->valid, VM_PAGE_BITS_ALL);
}
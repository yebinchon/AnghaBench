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
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_4__ {int oflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PTE_REF ; 
 int VPO_UNMANAGED ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(mmu_t mmu, vm_page_t m)
{
	int count;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("moea_ts_referenced: page %p is not managed", m));
	FUNC2(&pvh_global_lock);
	count = FUNC1(m, PTE_REF);
	FUNC3(&pvh_global_lock);
	return (count);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {int oflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PTE_CHG ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC5(mmu_t mmu, vm_page_t m)
{
	boolean_t rv;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("moea_is_modified: page %p is not managed", m));

	/*
	 * If the page is not busied then this check is racy.
	 */
	if (!FUNC2(m))
		return (FALSE);

	FUNC3(&pvh_global_lock);
	rv = FUNC1(m, PTE_CHG);
	FUNC4(&pvh_global_lock);
	return (rv);
}
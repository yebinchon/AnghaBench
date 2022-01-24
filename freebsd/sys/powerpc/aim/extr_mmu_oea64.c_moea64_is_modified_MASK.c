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
 int /*<<< orphan*/  LPTE_CHG ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

boolean_t
FUNC3(mmu_t mmu, vm_page_t m)
{

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("moea64_is_modified: page %p is not managed", m));

	/*
	 * If the page is not busied then this check is racy.
	 */
	if (!FUNC2(m))
		return (FALSE);

	return (FUNC1(mmu, m, LPTE_CHG));
}
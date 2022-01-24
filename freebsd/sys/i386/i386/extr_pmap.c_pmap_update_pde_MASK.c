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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_4__ {int /*<<< orphan*/  pm_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(pmap_t pmap, vm_offset_t va, pd_entry_t *pde, pd_entry_t newpde)
{

	if (pmap == kernel_pmap)
		FUNC2(va, newpde);
	else
		FUNC1(pde, newpde);
	if (pmap == kernel_pmap || !FUNC0(&pmap->pm_active))
		FUNC3(va, newpde);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pmap_t ;
struct TYPE_7__ {int /*<<< orphan*/  pm_l1; } ;
struct TYPE_6__ {int pm_satp; int /*<<< orphan*/  pm_active; int /*<<< orphan*/  pm_l1; int /*<<< orphan*/  pm_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int SATP_MODE_SV39 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(pmap_t pmap)
{

	FUNC1(pmap);
	FUNC2(&pmap->pm_stats, sizeof(pmap->pm_stats));
	pmap->pm_l1 = kernel_pmap->pm_l1;
	pmap->pm_satp = SATP_MODE_SV39 | (FUNC4(pmap->pm_l1) >> PAGE_SHIFT);
	FUNC0(&pmap->pm_active);
	FUNC3(pmap);
}
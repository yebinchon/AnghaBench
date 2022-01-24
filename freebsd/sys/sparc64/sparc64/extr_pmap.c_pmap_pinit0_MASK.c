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
typedef  TYPE_1__* pmap_t ;
struct TYPE_4__ {int /*<<< orphan*/  pm_stats; int /*<<< orphan*/ * pm_tsb_obj; int /*<<< orphan*/ * pm_tsb; int /*<<< orphan*/  pm_active; int /*<<< orphan*/ * pm_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAXCPU ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TLB_CTX_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void
FUNC3(pmap_t pm)
{
	int i;

	FUNC1(pm);
	for (i = 0; i < MAXCPU; i++)
		pm->pm_context[i] = TLB_CTX_KERNEL;
	FUNC0(&pm->pm_active);
	pm->pm_tsb = NULL;
	pm->pm_tsb_obj = NULL;
	FUNC2(&pm->pm_stats, sizeof(pm->pm_stats));
}
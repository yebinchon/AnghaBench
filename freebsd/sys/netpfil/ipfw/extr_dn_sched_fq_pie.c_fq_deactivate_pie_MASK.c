#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pie_status {int sflags; int /*<<< orphan*/  lock_mtx; int /*<<< orphan*/  aqm_pie_callout; } ;

/* Variables and functions */
 int PIE_ACTIVE ; 
 int PIE_INMEASUREMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) __inline static void
FUNC3(struct pie_status *pst)
{ 
	FUNC1(&pst->lock_mtx);
	pst->sflags &= ~(PIE_ACTIVE | PIE_INMEASUREMENT);
	FUNC0(&pst->aqm_pie_callout);
	//D("PIE Deactivated");
	FUNC2(&pst->lock_mtx);
}
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
struct slb {int dummy; } ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_slb_len; struct slb** pm_slb; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int n_slbs ; 

void
FUNC2(pmap_t pm, struct slb *slb)
{
	int i;

	FUNC0(pm, MA_OWNED);

	if (pm->pm_slb_len < n_slbs) {
		i = pm->pm_slb_len;
		pm->pm_slb_len++;
	} else {
		i = FUNC1() % n_slbs;
	}

	/* Note that this replacement is atomic with respect to trap_subr */
	pm->pm_slb[i] = slb;
}
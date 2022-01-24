#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int status; int /*<<< orphan*/ * sym_hcb_ptr; int /*<<< orphan*/  sim_links; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  hcb_p ;
typedef  TYPE_2__* ccb_p ;
struct TYPE_5__ {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int CAM_SIM_QUEUED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 

__attribute__((used)) static void FUNC5(hcb_p np, union ccb *ccb, ccb_p cp)
{

	FUNC0(MA_OWNED);

	if (ccb->ccb_h.status & CAM_SIM_QUEUED) {
		FUNC1(&cp->ch);
		FUNC3(FUNC2(&ccb->ccb_h.sim_links));
		ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
		ccb->ccb_h.sym_hcb_ptr = NULL;
	}
	FUNC4(ccb);
}
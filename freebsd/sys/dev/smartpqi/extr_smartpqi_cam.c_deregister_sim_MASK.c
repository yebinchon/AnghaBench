#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct TYPE_3__ {int /*<<< orphan*/  map_lock; void* mtx_init; int /*<<< orphan*/  cam_lock; int /*<<< orphan*/ * devq; int /*<<< orphan*/ * sim; void* sim_registered; int /*<<< orphan*/  path; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
struct TYPE_4__ {int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {struct pqisrc_softstate* callback_arg; int /*<<< orphan*/  callback; scalar_t__ event_enable; TYPE_2__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FALSE ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smartpqi_async ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC12(struct pqisrc_softstate *softs)
{
	struct ccb_setasync csa;
	
	FUNC0("IN\n");

	if (softs->os_specific.mtx_init) {
		FUNC5(&softs->os_specific.cam_lock);
	}


	FUNC11(&csa.ccb_h, softs->os_specific.path, 5);
	csa.ccb_h.func_code = XPT_SASYNC_CB;
	csa.event_enable = 0;
	csa.callback = smartpqi_async;
	csa.callback_arg = softs;
	FUNC7((union ccb *)&csa);
	FUNC9(softs->os_specific.path);

	FUNC10(softs->os_specific.sim, 0);

	FUNC8(FUNC2(softs->os_specific.sim));
	softs->os_specific.sim_registered = FALSE;

	if (softs->os_specific.sim) {
		FUNC1(softs->os_specific.sim, FALSE);
		softs->os_specific.sim = NULL;
	}
	if (softs->os_specific.mtx_init) {
		FUNC6(&softs->os_specific.cam_lock);
	}
	if (softs->os_specific.devq != NULL) {
		FUNC3(softs->os_specific.devq);
	}
	if (softs->os_specific.mtx_init) {
		FUNC4(&softs->os_specific.cam_lock);
		softs->os_specific.mtx_init = FALSE;
	}

	FUNC4(&softs->os_specific.map_lock);

	FUNC0("OUT\n");
}
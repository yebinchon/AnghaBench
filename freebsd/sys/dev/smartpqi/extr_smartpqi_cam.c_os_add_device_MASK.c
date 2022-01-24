#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_8__ {int /*<<< orphan*/  sim; scalar_t__ sim_registered; } ;
struct TYPE_9__ {TYPE_2__ os_specific; } ;
typedef  TYPE_3__ pqisrc_softstate_t ;
struct TYPE_10__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; } ;
typedef  TYPE_4__ pqi_scsi_dev_t ;

/* Variables and functions */
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 union ccb* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

void FUNC7(pqisrc_softstate_t *softs, pqi_scsi_dev_t *device) {
	union ccb			*ccb;

	FUNC1("IN\n");

	if(softs->os_specific.sim_registered) {	
		if ((ccb = FUNC3()) == NULL) {
			FUNC0("rescan failed (can't allocate CCB)\n");
			return;
		}

		if (FUNC4(&ccb->ccb_h.path, NULL,
			FUNC2(softs->os_specific.sim),
			device->target, device->lun) != CAM_REQ_CMP) {
			FUNC0("rescan failed (can't create path)\n");
			FUNC5(ccb);
			return;
		}
		FUNC6(ccb);
	}

	FUNC1("OUT\n");
}
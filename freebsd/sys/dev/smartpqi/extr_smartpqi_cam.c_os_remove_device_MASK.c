#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct cam_path {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sim; scalar_t__ sim_registered; } ;
struct TYPE_9__ {TYPE_1__ os_specific; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_10__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; } ;
typedef  TYPE_3__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_path*) ; 

void FUNC7(pqisrc_softstate_t *softs,
        pqi_scsi_dev_t *device) {
	struct cam_path *tmppath;

	FUNC1("IN\n");
	
	if(softs->os_specific.sim_registered) {
		if (FUNC5(&tmppath, NULL, 
			FUNC2(softs->os_specific.sim),
			device->target, device->lun) != CAM_REQ_CMP) {
			FUNC0("unable to create path for async event");
			return;
		}
		FUNC4(AC_LOST_DEVICE, tmppath, NULL);
		FUNC6(tmppath);
		FUNC3(softs, device);
	}

	FUNC1("OUT\n");

}
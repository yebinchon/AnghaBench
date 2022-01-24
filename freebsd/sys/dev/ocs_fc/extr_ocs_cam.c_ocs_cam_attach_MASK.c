#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct cam_devq {int dummy; } ;
struct TYPE_7__ {int num_vports; int /*<<< orphan*/  sim_lock; struct cam_devq* devq; scalar_t__ io_in_use; int /*<<< orphan*/  io_high_watermark; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ocs_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OCS_SCSI_MAX_IOS ; 
 struct cam_devq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int32_t
FUNC10(ocs_t *ocs)
{
	struct cam_devq	*devq = NULL;
	int	i = 0;
	uint32_t	max_io = FUNC9(ocs, OCS_SCSI_MAX_IOS);

	if (NULL == (devq = FUNC0(max_io))) {
		FUNC2(ocs->dev, "Can't allocate SIMQ\n");
		return -1;
	}

	ocs->devq = devq;

	if (FUNC5(&ocs->sim_lock) == 0) {
		FUNC4(&ocs->sim_lock, "ocs_sim_lock", NULL, MTX_DEF);
	}

	for (i = 0; i < (ocs->num_vports + 1); i++) {
		if (FUNC6(ocs, i)) {
			FUNC8(ocs, "Attach port failed for chan: %d\n", i);
			goto detach_port;
		}
	}
	
	ocs->io_high_watermark = max_io;
	ocs->io_in_use = 0;
	return 0;

detach_port:
	while (--i >= 0) {
		FUNC7(ocs, i);
	}

	FUNC1(ocs->devq);

	if (FUNC5(&ocs->sim_lock))
		FUNC3(&ocs->sim_lock);

	return 1;	
}
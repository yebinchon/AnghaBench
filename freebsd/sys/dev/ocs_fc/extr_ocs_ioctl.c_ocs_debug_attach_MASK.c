#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ocs_softc {int /*<<< orphan*/  dbg_lock; TYPE_1__* cdev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {struct ocs_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_cdevsw ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocs_softc*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

void
FUNC8(void *os)
{
	struct ocs_softc *ocs = os;
	int error = 0;
	char *resname = NULL;
	int32_t	unit = INT32_MAX;
	uint32_t ocs_debug_mask = 0;

	resname = "debug_mask";
	if (0 == (error = FUNC7(FUNC0(ocs->dev), FUNC1(ocs->dev),
				resname, &ocs_debug_mask))) {
		FUNC2(ocs->dev, "setting %s to %010x\n", resname, ocs_debug_mask);
		FUNC5(ocs_debug_mask);
	}

	unit = FUNC1(ocs->dev);
	ocs->cdev = FUNC3(&ocs_cdevsw, unit, UID_ROOT, GID_OPERATOR, 0640,
			"ocs%d", unit);
	if (ocs->cdev) {
		ocs->cdev->si_drv1 = ocs;
	}

	/* initialize sysctl interface */
	FUNC6(ocs);
	FUNC4(&ocs->dbg_lock, "ocs_dbg_lock", NULL, MTX_DEF);
}
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
struct sbp_target {int num_lun; struct sbp_dev** luns; int /*<<< orphan*/  sbp; } ;
struct sbp_dev {scalar_t__ status; int /*<<< orphan*/  freeze; int /*<<< orphan*/  path; struct sbp_target* target; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  ORB_FUN_RST ; 
 scalar_t__ SBP_DEV_DEAD ; 
 scalar_t__ SBP_DEV_LOGIN ; 
 scalar_t__ SBP_DEV_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sbp_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct sbp_dev *sdev, int method)
{
	int i;
	struct sbp_target *target = sdev->target;
	struct sbp_dev *tsdev;

	FUNC0(target->sbp);
	for (i = 0; i < target->num_lun; i++) {
		tsdev = target->luns[i];
		if (tsdev == NULL)
			continue;
		if (tsdev->status == SBP_DEV_DEAD)
			continue;
		if (tsdev->status == SBP_DEV_RESET)
			continue;
		FUNC5(tsdev->path, 1);
		tsdev->freeze++;
		FUNC2(tsdev, CAM_CMD_TIMEOUT);
		if (method == 2)
			tsdev->status = SBP_DEV_LOGIN;
	}
	switch (method) {
	case 1:
		FUNC1("target reset\n");
		FUNC3(sdev, ORB_FUN_RST, NULL);
		break;
	case 2:
		FUNC1("reset start\n");
		FUNC4(sdev);
		break;
	}

}
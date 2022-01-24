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
struct sbp_dev {scalar_t__ status; int /*<<< orphan*/ * path; scalar_t__ freeze; TYPE_1__* target; } ;
struct TYPE_2__ {int /*<<< orphan*/  sbp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  CAM_DEV_NOT_THERE ; 
 scalar_t__ SBP_DEV_DEAD ; 
 scalar_t__ SBP_DEV_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct sbp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct sbp_dev *sdev)
{
	if (sdev == NULL)
		return;
	if (sdev->status == SBP_DEV_DEAD)
		return;
	if (sdev->status == SBP_DEV_RESET)
		return;
	FUNC0(sdev->target->sbp);
	FUNC1(sdev, CAM_DEV_NOT_THERE);
	if (sdev->path) {
		FUNC4(sdev->path,
				 sdev->freeze, TRUE);
		sdev->freeze = 0;
		FUNC2(AC_LOST_DEVICE, sdev->path, NULL);
		FUNC3(sdev->path);
		sdev->path = NULL;
	}
}
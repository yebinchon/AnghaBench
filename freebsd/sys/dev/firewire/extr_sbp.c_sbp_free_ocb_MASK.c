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
struct sbp_ocb {int /*<<< orphan*/ * ccb; scalar_t__ flags; } ;
struct sbp_dev {int flags; int freeze; int /*<<< orphan*/  path; int /*<<< orphan*/  free_ocbs; TYPE_1__* target; } ;
struct TYPE_2__ {int /*<<< orphan*/  sbp; } ;

/* Variables and functions */
 int ORB_SHORTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sbp_ocb*,struct sbp_ocb*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sbp_dev *sdev, struct sbp_ocb *ocb)
{
	ocb->flags = 0;
	ocb->ccb = NULL;

	FUNC0(sdev->target->sbp);
	FUNC1(&sdev->free_ocbs, ocb, ocb);
	if ((sdev->flags & ORB_SHORTAGE) != 0) {
		int count;

		sdev->flags &= ~ORB_SHORTAGE;
		count = sdev->freeze;
		sdev->freeze = 0;
		FUNC2(sdev->path, count, TRUE);
	}
}
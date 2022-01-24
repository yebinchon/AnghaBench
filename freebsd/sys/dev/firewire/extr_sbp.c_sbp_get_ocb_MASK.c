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
struct sbp_ocb {int /*<<< orphan*/ * ccb; } ;
struct sbp_dev {int /*<<< orphan*/  free_ocbs; int /*<<< orphan*/  flags; TYPE_1__* target; } ;
struct TYPE_2__ {int /*<<< orphan*/  sbp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ORB_SHORTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sbp_ocb* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sbp_ocb*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct sbp_ocb *
FUNC4(struct sbp_dev *sdev)
{
	struct sbp_ocb *ocb;

	FUNC0(sdev->target->sbp);
	ocb = FUNC1(&sdev->free_ocbs);
	if (ocb == NULL) {
		sdev->flags |= ORB_SHORTAGE;
		FUNC3("ocb shortage!!!\n");
		return NULL;
	}
	FUNC2(&sdev->free_ocbs, ocb);
	ocb->ccb = NULL;
	return (ocb);
}
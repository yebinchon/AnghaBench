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
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpl; } ;
union ccb {TYPE_2__ ccb_h; TYPE_1__ nvmeio; } ;
struct nvme_completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  CAM_SIM_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nvme_completion const*,int) ; 
 scalar_t__ FUNC1 (struct nvme_completion const*) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 

__attribute__((used)) static void
FUNC4(void *ccb_arg, const struct nvme_completion *cpl)
{
	union ccb *ccb = (union ccb *)ccb_arg;

	/*
	 * Let the periph know the completion, and let it sort out what
	 * it means. Make our best guess, though for the status code.
	 */
	FUNC0(&ccb->nvmeio.cpl, cpl, sizeof(*cpl));
	ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
	if (FUNC1(cpl)) {
		ccb->ccb_h.status = CAM_REQ_CMP_ERR;
		FUNC2(ccb);
	} else {
		ccb->ccb_h.status = CAM_REQ_CMP;
		FUNC3(ccb);
	}
}
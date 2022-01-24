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
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct cam_periph {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cam_periph *periph, union ccb *ccb)
{
/*
	if (ccb->ccb_h.status != CAM_REQ_CMP)
		printf("arcmsr_rescanLun_cb: Rescan Target=%x, lun=%x,"
			"failure status=%x\n", ccb->ccb_h.target_id,
			ccb->ccb_h.target_lun, ccb->ccb_h.status);
	else
		printf("arcmsr_rescanLun_cb: Rescan lun successfully!\n");
*/
	FUNC1(ccb->ccb_h.path);
	FUNC0(ccb);
}
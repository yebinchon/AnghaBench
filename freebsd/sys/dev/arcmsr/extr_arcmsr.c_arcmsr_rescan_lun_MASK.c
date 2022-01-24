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
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  cbfcnp; int /*<<< orphan*/  func_code; } ;
union ccb {TYPE_1__ crcn; TYPE_2__ ccb_h; } ;
struct cam_path {int dummy; } ;
struct AdapterControlBlock {int /*<<< orphan*/  psim; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_FLAG_NONE ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  XPT_SCAN_LUN ; 
 int /*<<< orphan*/  arcmsr_rescanLun_cb ; 
 int /*<<< orphan*/  FUNC0 (union ccb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct cam_path*,int) ; 

__attribute__((used)) static void	FUNC7(struct AdapterControlBlock *acb, int target, int lun)
{
	struct cam_path     *path;
	union ccb           *ccb;

	if ((ccb = (union ccb *)FUNC3()) == NULL)
			return;
	if (FUNC4(&path, NULL, FUNC1(acb->psim), target, lun) != CAM_REQ_CMP)
	{
		FUNC5(ccb);
		return;
	}
/*	printf("arcmsr_rescan_lun: Rescan Target=%x, Lun=%x\n", target, lun); */
	FUNC0(ccb, sizeof(union ccb));
	FUNC6(&ccb->ccb_h, path, 5);
	ccb->ccb_h.func_code = XPT_SCAN_LUN;
	ccb->ccb_h.cbfcnp = arcmsr_rescanLun_cb;
	ccb->crcn.flags = CAM_FLAG_NONE;
	FUNC2(ccb);
}
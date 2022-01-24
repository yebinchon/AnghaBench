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
struct isp_fc {int /*<<< orphan*/  sim; } ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
typedef  int /*<<< orphan*/  fcportdb_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 struct isp_fc* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ISP_LOGWARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 union ccb* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

__attribute__((used)) static void
FUNC7(ispsoftc_t *isp, fcportdb_t *fcp, int chan, int tgt)
{
	union ccb *ccb;
	struct isp_fc *fc = FUNC0(isp, chan);

	/*
	 * Allocate a CCB, create a wildcard path for this target and schedule a rescan.
	 */
	ccb = FUNC3();
	if (ccb == NULL) {
		FUNC2(isp, ISP_LOGWARN, "Chan %d unable to alloc CCB for rescan", chan);
		return;
	}
	if (FUNC4(&ccb->ccb_h.path, NULL, FUNC1(fc->sim),
	    tgt, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC2(isp, ISP_LOGWARN, "unable to create path for rescan");
		FUNC5(ccb);
		return;
	}
	FUNC6(ccb);
}
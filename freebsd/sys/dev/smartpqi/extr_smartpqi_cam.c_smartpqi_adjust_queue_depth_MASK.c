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
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {scalar_t__ status; int /*<<< orphan*/  flags; int /*<<< orphan*/  func_code; } ;
struct ccb_relsim {TYPE_1__ ccb_h; int /*<<< orphan*/  openings; int /*<<< orphan*/  release_flags; } ;
struct cam_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DEV_QFREEZE ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RELSIM_ADJUST_OPENINGS ; 
 int /*<<< orphan*/  XPT_REL_SIMQ ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct cam_path*,int) ; 

void FUNC4(struct cam_path *path, uint32_t queue_depth)
{
	struct ccb_relsim crs;

	FUNC0("IN\n");

	FUNC3(&crs.ccb_h, path, 5);
	crs.ccb_h.func_code = XPT_REL_SIMQ;
	crs.ccb_h.flags = CAM_DEV_QFREEZE;
	crs.release_flags = RELSIM_ADJUST_OPENINGS;
	crs.openings = queue_depth;
	FUNC2((union ccb *)&crs);
	if(crs.ccb_h.status != CAM_REQ_CMP) {
		FUNC1("XPT_REL_SIMQ failed stat=%d\n", crs.ccb_h.status);
	}

	FUNC0("OUT\n");
}
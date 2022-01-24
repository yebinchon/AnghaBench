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
struct isp_fc {int /*<<< orphan*/  sim; } ;
struct cam_path {int dummy; } ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
typedef  int /*<<< orphan*/  fcportdb_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 struct isp_fc* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_path*) ; 

__attribute__((used)) static void
FUNC5(ispsoftc_t *isp, fcportdb_t *fcp, int chan, int tgt)
{
	struct cam_path *tp;
	struct isp_fc *fc = FUNC0(isp, chan);

	if (FUNC3(&tp, NULL, FUNC1(fc->sim), tgt, CAM_LUN_WILDCARD) == CAM_REQ_CMP) {
		FUNC2(AC_LOST_DEVICE, tp, NULL);
		FUNC4(tp);
	}
}
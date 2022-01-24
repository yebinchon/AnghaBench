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
struct TYPE_2__ {scalar_t__ target_id; scalar_t__ target_lun; int /*<<< orphan*/  status; } ;
union ccb {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_INVALID ; 
 int /*<<< orphan*/  CAM_TID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (union ccb*) ; 

__attribute__((used)) static int
FUNC1(union ccb *ccb)
{

	if (ccb->ccb_h.target_id != 0) {
		ccb->ccb_h.status = CAM_TID_INVALID;
		FUNC0(ccb);
		return (-1);
	}
	if (ccb->ccb_h.target_lun != 0) {
		ccb->ccb_h.status = CAM_LUN_INVALID;
		FUNC0(ccb);
		return (-1);
	}
	return (0);
}
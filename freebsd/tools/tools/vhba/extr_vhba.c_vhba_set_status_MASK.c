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
struct ccb_hdr {int status; int /*<<< orphan*/  path; } ;
typedef  int cam_status ;

/* Variables and functions */
 int CAM_DEV_QFRZN ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void
FUNC1(struct ccb_hdr *ccbh, cam_status status)
{
	ccbh->status &= ~CAM_STATUS_MASK;
	ccbh->status |= status;
	if (status != CAM_REQ_CMP) {
		if ((ccbh->status & CAM_DEV_QFRZN) == 0) {
			ccbh->status |= CAM_DEV_QFRZN;
			FUNC0(ccbh->path, 1);
		}
	}
}
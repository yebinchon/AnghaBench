#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_10__ {int status; int /*<<< orphan*/  path; } ;
struct TYPE_11__ {scalar_t__ scsi_status; TYPE_1__ ccb_h; } ;
typedef  TYPE_2__ XS_T ;
struct TYPE_12__ {int /*<<< orphan*/  wdog; } ;

/* Variables and functions */
 int CAM_AUTOSENSE_FAIL ; 
 int CAM_AUTOSNS_VALID ; 
 int CAM_DEV_QFRZN ; 
 int CAM_REQ_CMP ; 
 int CAM_SCSI_STATUS_ERROR ; 
 int CAM_SIM_QUEUED ; 
 int CAM_STATUS_MASK ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 TYPE_7__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ SCSI_STATUS_CHECK_COND ; 
 scalar_t__ SCSI_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

void
FUNC10(XS_T *sccb)
{
	ispsoftc_t *isp = FUNC2(sccb);
	uint32_t status;

	if (FUNC3(sccb))
		FUNC4(sccb, CAM_REQ_CMP);

	if ((sccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_CMP && (sccb->scsi_status != SCSI_STATUS_OK)) {
		sccb->ccb_h.status &= ~CAM_STATUS_MASK;
		if ((sccb->scsi_status == SCSI_STATUS_CHECK_COND) && (sccb->ccb_h.status & CAM_AUTOSNS_VALID) == 0) {
			sccb->ccb_h.status |= CAM_AUTOSENSE_FAIL;
		} else {
			sccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
		}
	}

	sccb->ccb_h.status &= ~CAM_SIM_QUEUED;
	status = sccb->ccb_h.status & CAM_STATUS_MASK;
	if (status != CAM_REQ_CMP &&
	    (sccb->ccb_h.status & CAM_DEV_QFRZN) == 0) {
		sccb->ccb_h.status |= CAM_DEV_QFRZN;
		FUNC9(sccb->ccb_h.path, 1);
	}

	if (FUNC0(sccb)) {
		if (FUNC5(&FUNC1(sccb)->wdog))
			FUNC6(&FUNC1(sccb)->wdog);
		FUNC7(isp, (union ccb *) sccb);
	}
	FUNC8((union ccb *) sccb);
}
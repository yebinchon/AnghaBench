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
struct TYPE_2__ {int status; int /*<<< orphan*/  flags; } ;
union ccb {TYPE_1__ ccb_h; int /*<<< orphan*/  csio; } ;
struct scsi_inquiry_data {int dummy; } ;
struct mpt_standalone_disk {int dummy; } ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DEV_QFRZDIS ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  SHORT_INQUIRY_LENGTH ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 struct scsi_inquiry_data* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 union ccb* FUNC3 (struct cam_device*) ; 
 scalar_t__ FUNC4 (struct cam_device*,union ccb*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_standalone_disk*,struct scsi_inquiry_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_inquiry_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct cam_device *dev, struct mpt_standalone_disk *disk)
{
	struct scsi_inquiry_data *inq_buf;
	union ccb *ccb;
	int error;

	ccb = FUNC3(dev);
	if (ccb == NULL)
		return (ENOMEM);

	/* Zero the rest of the ccb. */
	FUNC0(&ccb->csio);

	inq_buf = FUNC1(1, sizeof(*inq_buf));
	if (inq_buf == NULL) {
		FUNC2(ccb);
		return (ENOMEM);
	}
	FUNC7(&ccb->csio, 1, NULL, MSG_SIMPLE_Q_TAG, (void *)inq_buf,
	    SHORT_INQUIRY_LENGTH, 0, 0, SSD_FULL_SIZE, 5000);

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (FUNC4(dev, ccb) < 0) {
		error = errno;
		FUNC6(inq_buf);
		FUNC2(ccb);
		return (error);
	}

	if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
		FUNC6(inq_buf);
		FUNC2(ccb);
		return (EIO);
	}

	FUNC2(ccb);
	FUNC5(disk, inq_buf);
	FUNC6(inq_buf);
	return (0);
}
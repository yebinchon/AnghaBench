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
typedef  int /*<<< orphan*/  uint8_t ;
struct scsi_read_capacity_data_long {int /*<<< orphan*/  addr; } ;
struct scsi_read_capacity_data {int /*<<< orphan*/  addr; } ;
struct mpt_standalone_disk {int maxlba; } ;
struct cam_device {int dummy; } ;
typedef  int /*<<< orphan*/  rcaplong ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DEV_QFRZDIS ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 union ccb* FUNC2 (struct cam_device*) ; 
 scalar_t__ FUNC3 (struct cam_device*,union ccb*) ; 
 int errno ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_read_capacity_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct cam_device *dev, struct mpt_standalone_disk *disk)
{
	struct scsi_read_capacity_data rcap;
	struct scsi_read_capacity_data_long rcaplong;
	union ccb *ccb;
	int error;

	ccb = FUNC2(dev);
	if (ccb == NULL)
		return (ENOMEM);

	/* Zero the rest of the ccb. */
	FUNC0(&ccb->csio);

	FUNC6(&ccb->csio, 1, NULL, MSG_SIMPLE_Q_TAG, &rcap,
	    SSD_FULL_SIZE, 5000);

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (FUNC3(dev, ccb) < 0) {
		error = errno;
		FUNC1(ccb);
		return (error);
	}

	if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
		FUNC1(ccb);
		return (EIO);
	}

	/*
	 * A last block of 2^32-1 means that the true capacity is over 2TB,
	 * and we need to issue the long READ CAPACITY to get the real
	 * capacity.  Otherwise, we're all set.
	 */
	if (FUNC4(rcap.addr) != 0xffffffff) {
		disk->maxlba = FUNC4(rcap.addr);
		FUNC1(ccb);
		return (0);
	}

	/* Zero the rest of the ccb. */
	FUNC0(&ccb->csio);

	FUNC7(&ccb->csio, 1, NULL, MSG_SIMPLE_Q_TAG, 0, 0, 0,
	    (uint8_t *)&rcaplong, sizeof(rcaplong), SSD_FULL_SIZE, 5000);

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (FUNC3(dev, ccb) < 0) {
		error = errno;
		FUNC1(ccb);
		return (error);
	}

	if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
		FUNC1(ccb);
		return (EIO);
	}
	FUNC1(ccb);

	disk->maxlba = FUNC5(rcaplong.addr);
	return (0);
}
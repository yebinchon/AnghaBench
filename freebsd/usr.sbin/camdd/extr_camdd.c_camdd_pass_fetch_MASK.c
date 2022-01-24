#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ dxfer_len; } ;
struct TYPE_10__ {scalar_t__ resid; scalar_t__ dxfer_len; } ;
struct TYPE_9__ {int status; struct camdd_buf* ccb_buf; } ;
union ccb {TYPE_5__ nvmeio; TYPE_4__ csio; TYPE_3__ ccb_h; } ;
struct camdd_dev_pass {int protocol; TYPE_6__* dev; } ;
struct TYPE_7__ {struct camdd_dev_pass pass; } ;
struct camdd_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; scalar_t__ bytes_transferred; int /*<<< orphan*/  cur_active_io; int /*<<< orphan*/  active_queue; TYPE_1__ dev_spec; } ;
struct camdd_buf_data {scalar_t__ resid; union ccb ccb; } ;
struct TYPE_8__ {struct camdd_buf_data data; } ;
struct camdd_buf {scalar_t__ status; TYPE_2__ buf_type_spec; } ;
typedef  int /*<<< orphan*/  ccb ;
typedef  int cam_status ;
struct TYPE_12__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAMDD_DEV_FLAG_EOF ; 
 scalar_t__ CAMDD_STATUS_EOF ; 
 scalar_t__ CAMDD_STATUS_ERROR ; 
 scalar_t__ CAMDD_STATUS_NONE ; 
 int /*<<< orphan*/  CAMIOGET ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
#define  PROTO_NVME 129 
#define  PROTO_SCSI 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct camdd_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*,union ccb*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  camdd_buf ; 
 scalar_t__ FUNC3 (union ccb*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct camdd_dev*,struct camdd_buf*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC8(struct camdd_dev *dev)
{
	struct camdd_dev_pass *pass_dev = &dev->dev_spec.pass;
	union ccb ccb;
	int retval = 0, num_fetched = 0, error_count = 0;

	FUNC7(&dev->mutex);
	/*
	 * XXX KDM we don't distinguish between EFAULT and ENOENT.
	 */
	while ((retval = FUNC5(pass_dev->dev->fd, CAMIOGET, &ccb)) != -1) {
		struct camdd_buf *buf;
		struct camdd_buf_data *data;
		cam_status ccb_status;
		union ccb *buf_ccb;

		buf = ccb.ccb_h.ccb_buf;
		data = &buf->buf_type_spec.data;
		buf_ccb = &data->ccb;

		num_fetched++;

		/*
		 * Copy the CCB back out so we get status, sense data, etc.
		 */
		FUNC1(&ccb, buf_ccb, sizeof(ccb));

		FUNC6(&dev->mutex);

		/*
		 * We're now done, so take this off the active queue.
		 */
		FUNC0(&dev->active_queue, buf, camdd_buf, links);
		dev->cur_active_io--;

		ccb_status = ccb.ccb_h.status & CAM_STATUS_MASK;
		if (ccb_status != CAM_REQ_CMP) {
			FUNC2(pass_dev->dev, &ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		}

		switch (pass_dev->protocol) {
		case PROTO_SCSI:
			data->resid = ccb.csio.resid;
			dev->bytes_transferred += (ccb.csio.dxfer_len - ccb.csio.resid);
			break;
		case PROTO_NVME:
			data->resid = 0;
			dev->bytes_transferred += ccb.nvmeio.dxfer_len;
			break;
		default:
			return -1;
			break;
		}

		if (buf->status == CAMDD_STATUS_NONE)
			buf->status = FUNC3(&ccb, pass_dev->protocol);
		if (buf->status == CAMDD_STATUS_ERROR)
			error_count++;
		else if (buf->status == CAMDD_STATUS_EOF) {
			/*
			 * Once we queue this buffer to our partner thread,
			 * he will know that we've hit EOF.
			 */
			dev->flags |= CAMDD_DEV_FLAG_EOF;
		}

		FUNC4(dev, buf, &error_count);

		/*
		 * Unlock in preparation for the ioctl call.
		 */
		FUNC7(&dev->mutex);
	}

	FUNC6(&dev->mutex);

	if (error_count > 0)
		return (-1);
	else
		return (num_fetched);
}
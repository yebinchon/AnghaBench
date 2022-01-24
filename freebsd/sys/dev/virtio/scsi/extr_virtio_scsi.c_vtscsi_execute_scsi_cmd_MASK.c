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
struct vtscsi_softc {struct virtqueue* vtscsi_request_vq; struct sglist* vtscsi_sglist; } ;
struct virtio_scsi_cmd_resp {int response; } ;
struct virtio_scsi_cmd_req {int dummy; } ;
struct vtscsi_request {int /*<<< orphan*/  vsr_callout; int /*<<< orphan*/  vsr_flags; int /*<<< orphan*/  vsr_complete; struct virtio_scsi_cmd_resp vsr_cmd_resp; struct virtio_scsi_cmd_req vsr_cmd_req; TYPE_1__* vsr_ccb; } ;
struct virtqueue {int dummy; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {int timeout; struct vtscsi_request* ccbh_vtscsi_req; int /*<<< orphan*/  status; } ;
struct ccb_scsiio {struct ccb_hdr ccb_h; } ;
struct TYPE_2__ {struct ccb_scsiio csio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  CAM_SIM_QUEUED ; 
 int CAM_TIME_INFINITY ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  VTSCSI_ERROR ; 
 int /*<<< orphan*/  VTSCSI_REQUEST_VQ ; 
 int /*<<< orphan*/  VTSCSI_REQ_FLAG_TIMEOUT_SET ; 
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtscsi_request*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct virtqueue*,struct vtscsi_request*,struct sglist*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*) ; 
 int /*<<< orphan*/  vtscsi_complete_scsi_cmd ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,int,struct vtscsi_request*,struct ccb_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_request*,int /*<<< orphan*/ ,char*,struct vtscsi_request*,struct ccb_hdr*) ; 
 int FUNC5 (struct vtscsi_softc*,struct vtscsi_request*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ccb_scsiio*,struct virtio_scsi_cmd_req*) ; 
 int /*<<< orphan*/  vtscsi_timedout_scsi_cmd ; 

__attribute__((used)) static int
FUNC8(struct vtscsi_softc *sc, struct vtscsi_request *req)
{
	struct sglist *sg;
	struct virtqueue *vq;
	struct ccb_scsiio *csio;
	struct ccb_hdr *ccbh;
	struct virtio_scsi_cmd_req *cmd_req;
	struct virtio_scsi_cmd_resp *cmd_resp;
	int readable, writable, error;

	sg = sc->vtscsi_sglist;
	vq = sc->vtscsi_request_vq;
	csio = &req->vsr_ccb->csio;
	ccbh = &csio->ccb_h;
	cmd_req = &req->vsr_cmd_req;
	cmd_resp = &req->vsr_cmd_resp;

	FUNC7(csio, cmd_req);

	error = FUNC5(sc, req, &readable, &writable);
	if (error)
		return (error);

	req->vsr_complete = vtscsi_complete_scsi_cmd;
	cmd_resp->response = -1;

	error = FUNC1(vq, req, sg, readable, writable);
	if (error) {
		FUNC3(sc, VTSCSI_ERROR,
		    "enqueue error=%d req=%p ccb=%p\n", error, req, ccbh);

		ccbh->status = CAM_REQUEUE_REQ;
		FUNC6(sc, VTSCSI_REQUEST_VQ);
		return (error);
	}

	ccbh->status |= CAM_SIM_QUEUED;
	ccbh->ccbh_vtscsi_req = req;

	FUNC2(vq);

	if (ccbh->timeout != CAM_TIME_INFINITY) {
		req->vsr_flags |= VTSCSI_REQ_FLAG_TIMEOUT_SET;
		FUNC0(&req->vsr_callout, SBT_1MS * ccbh->timeout,
		    0, vtscsi_timedout_scsi_cmd, req, 0);
	}

	FUNC4(req, VTSCSI_TRACE, "enqueued req=%p ccb=%p\n",
	    req, ccbh);

	return (0);
}
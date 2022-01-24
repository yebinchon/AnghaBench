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
struct vtscsi_softc {int dummy; } ;
struct virtio_scsi_cmd_resp {int dummy; } ;
struct vtscsi_request {int vsr_flags; scalar_t__ vsr_state; TYPE_1__* vsr_ccb; int /*<<< orphan*/  vsr_callout; struct virtio_scsi_cmd_resp vsr_cmd_resp; } ;
struct ccb_hdr {int status; int /*<<< orphan*/  path; struct vtscsi_request* ccbh_vtscsi_req; } ;
struct ccb_scsiio {struct ccb_hdr ccb_h; } ;
typedef  int cam_status ;
struct TYPE_2__ {struct ccb_scsiio csio; } ;

/* Variables and functions */
 int CAM_CMD_TIMEOUT ; 
 int CAM_DEV_QFRZN ; 
 int CAM_RELEASE_SIMQ ; 
 int CAM_REQ_ABORTED ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int VTSCSI_REQUEST ; 
 int VTSCSI_REQUEST_VQ ; 
 int VTSCSI_REQ_FLAG_TIMEOUT_SET ; 
 scalar_t__ VTSCSI_REQ_STATE_TIMEDOUT ; 
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vtscsi_softc*,struct ccb_scsiio*,struct virtio_scsi_cmd_resp*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,struct vtscsi_request*,struct ccb_hdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_softc*,struct vtscsi_request*) ; 
 int FUNC5 (struct virtio_scsi_cmd_resp*) ; 
 scalar_t__ FUNC6 (struct vtscsi_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct vtscsi_softc *sc, struct vtscsi_request *req)
{
	struct ccb_hdr *ccbh;
	struct ccb_scsiio *csio;
	struct virtio_scsi_cmd_resp *cmd_resp;
	cam_status status;

	csio = &req->vsr_ccb->csio;
	ccbh = &csio->ccb_h;
	cmd_resp = &req->vsr_cmd_resp;

	FUNC0(ccbh->ccbh_vtscsi_req == req,
	    ("ccb %p req mismatch %p/%p", ccbh, ccbh->ccbh_vtscsi_req, req));

	if (req->vsr_flags & VTSCSI_REQ_FLAG_TIMEOUT_SET)
		FUNC1(&req->vsr_callout);

	status = FUNC5(cmd_resp);
	if (status == CAM_REQ_ABORTED) {
		if (req->vsr_state == VTSCSI_REQ_STATE_TIMEDOUT)
			status = CAM_CMD_TIMEOUT;
	} else if (status == CAM_REQ_CMP)
		status = FUNC2(sc, csio, cmd_resp);

	if ((status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
		status |= CAM_DEV_QFRZN;
		FUNC8(ccbh->path, 1);
	}

	if (FUNC6(sc, VTSCSI_REQUEST | VTSCSI_REQUEST_VQ) != 0)
		status |= CAM_RELEASE_SIMQ;

	FUNC3(sc, VTSCSI_TRACE, "req=%p ccb=%p status=%#x\n",
	    req, ccbh, status);

	ccbh->status = status;
	FUNC7(req->vsr_ccb);
	FUNC4(sc, req);
}
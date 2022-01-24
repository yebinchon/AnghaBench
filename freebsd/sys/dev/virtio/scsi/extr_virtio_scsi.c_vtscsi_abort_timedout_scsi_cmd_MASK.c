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
struct vtscsi_softc {struct sglist* vtscsi_sglist; } ;
struct virtio_scsi_ctrl_tmf_resp {int response; } ;
struct vtscsi_request {int /*<<< orphan*/  vsr_complete; struct vtscsi_request* vsr_timedout_req; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_resp; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_req; TYPE_1__* vsr_ccb; } ;
struct virtio_scsi_ctrl_tmf_req {int response; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {int dummy; } ;
struct TYPE_2__ {struct ccb_hdr ccb_h; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  VIRTIO_SCSI_T_TMF_ABORT_TASK ; 
 int /*<<< orphan*/  VTSCSI_ERROR ; 
 int /*<<< orphan*/  VTSCSI_EXECUTE_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct sglist*,struct virtio_scsi_ctrl_tmf_resp*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sglist*) ; 
 int /*<<< orphan*/  vtscsi_complete_abort_timedout_scsi_cmd ; 
 struct vtscsi_request* FUNC2 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,int,struct vtscsi_request*,struct vtscsi_request*,struct ccb_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_softc*,struct vtscsi_request*) ; 
 int FUNC5 (struct vtscsi_softc*,struct vtscsi_request*,struct sglist*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ccb_hdr*,int /*<<< orphan*/ ,uintptr_t,struct virtio_scsi_ctrl_tmf_resp*) ; 

__attribute__((used)) static int
FUNC7(struct vtscsi_softc *sc,
    struct vtscsi_request *to_req)
{
	struct sglist *sg;
	struct ccb_hdr *to_ccbh;
	struct vtscsi_request *req;
	struct virtio_scsi_ctrl_tmf_req *tmf_req;
	struct virtio_scsi_ctrl_tmf_resp *tmf_resp;
	int error;

	sg = sc->vtscsi_sglist;
	to_ccbh = &to_req->vsr_ccb->ccb_h;

	req = FUNC2(sc);
	if (req == NULL) {
		error = ENOBUFS;
		goto fail;
	}

	tmf_req = &req->vsr_tmf_req;
	tmf_resp = &req->vsr_tmf_resp;

	FUNC6(to_ccbh, VIRTIO_SCSI_T_TMF_ABORT_TASK,
	    (uintptr_t) to_ccbh, tmf_req);

	FUNC1(sg);
	FUNC0(sg, tmf_req, sizeof(struct virtio_scsi_ctrl_tmf_req));
	FUNC0(sg, tmf_resp, sizeof(struct virtio_scsi_ctrl_tmf_resp));

	req->vsr_timedout_req = to_req;
	req->vsr_complete = vtscsi_complete_abort_timedout_scsi_cmd;
	tmf_resp->response = -1;

	error = FUNC5(sc, req, sg, 1, 1,
	    VTSCSI_EXECUTE_ASYNC);
	if (error == 0)
		return (0);

	FUNC4(sc, req);

fail:
	FUNC3(sc, VTSCSI_ERROR, "error=%d req=%p "
	    "timedout req=%p ccb=%p\n", error, req, to_req, to_ccbh);

	return (error);
}
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
typedef  int /*<<< orphan*/  uint32_t ;
struct vtscsi_softc {struct sglist* vtscsi_sglist; } ;
struct virtio_scsi_ctrl_tmf_resp {int response; } ;
struct vtscsi_request {int /*<<< orphan*/  vsr_complete; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_resp; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_req; TYPE_1__* vsr_ccb; } ;
struct virtio_scsi_ctrl_tmf_req {int response; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {scalar_t__ target_lun; } ;
struct ccb_resetdev {struct ccb_hdr ccb_h; } ;
struct TYPE_2__ {struct ccb_resetdev crd; } ;

/* Variables and functions */
 scalar_t__ CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  VIRTIO_SCSI_T_TMF_I_T_NEXUS_RESET ; 
 int /*<<< orphan*/  VIRTIO_SCSI_T_TMF_LOGICAL_UNIT_RESET ; 
 int /*<<< orphan*/  VTSCSI_EXECUTE_ASYNC ; 
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct sglist*,struct virtio_scsi_ctrl_tmf_resp*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sglist*) ; 
 int /*<<< orphan*/  vtscsi_complete_reset_dev_cmd ; 
 int /*<<< orphan*/  FUNC2 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,int,struct vtscsi_request*,struct ccb_hdr*) ; 
 int FUNC3 (struct vtscsi_softc*,struct vtscsi_request*,struct sglist*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccb_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_scsi_ctrl_tmf_resp*) ; 

__attribute__((used)) static int
FUNC5(struct vtscsi_softc *sc,
    struct vtscsi_request *req)
{
	struct sglist *sg;
	struct ccb_resetdev *crd;
	struct ccb_hdr *ccbh;
	struct virtio_scsi_ctrl_tmf_req *tmf_req;
	struct virtio_scsi_ctrl_tmf_resp *tmf_resp;
	uint32_t subtype;
	int error;

	sg = sc->vtscsi_sglist;
	crd = &req->vsr_ccb->crd;
	ccbh = &crd->ccb_h;
	tmf_req = &req->vsr_tmf_req;
	tmf_resp = &req->vsr_tmf_resp;

	if (ccbh->target_lun == CAM_LUN_WILDCARD)
		subtype = VIRTIO_SCSI_T_TMF_I_T_NEXUS_RESET;
	else
		subtype = VIRTIO_SCSI_T_TMF_LOGICAL_UNIT_RESET;

	FUNC4(ccbh, subtype, 0, tmf_req);

	FUNC1(sg);
	FUNC0(sg, tmf_req, sizeof(struct virtio_scsi_ctrl_tmf_req));
	FUNC0(sg, tmf_resp, sizeof(struct virtio_scsi_ctrl_tmf_resp));

	req->vsr_complete = vtscsi_complete_reset_dev_cmd;
	tmf_resp->response = -1;

	error = FUNC3(sc, req, sg, 1, 1,
	    VTSCSI_EXECUTE_ASYNC);

	FUNC2(sc, VTSCSI_TRACE, "error=%d req=%p ccb=%p\n",
	    error, req, ccbh);

	return (error);
}
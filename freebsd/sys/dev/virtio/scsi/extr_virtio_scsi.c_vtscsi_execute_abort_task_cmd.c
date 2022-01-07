
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vtscsi_softc {struct sglist* vtscsi_sglist; } ;
struct virtio_scsi_ctrl_tmf_resp {int response; } ;
struct vtscsi_request {scalar_t__ vsr_state; int vsr_flags; int vsr_complete; int vsr_callout; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_resp; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_req; TYPE_1__* vsr_ccb; } ;
struct virtio_scsi_ctrl_tmf_req {int response; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {scalar_t__ func_code; struct vtscsi_request* ccbh_vtscsi_req; } ;
struct ccb_abort {TYPE_2__* abort_ccb; struct ccb_hdr ccb_h; } ;
struct TYPE_4__ {struct ccb_hdr ccb_h; } ;
struct TYPE_3__ {struct ccb_abort cab; } ;


 int EALREADY ;
 int EINVAL ;
 int VIRTIO_SCSI_T_TMF_ABORT_TASK ;
 int VTSCSI_EXECUTE_ASYNC ;
 int VTSCSI_REQ_FLAG_TIMEOUT_SET ;
 scalar_t__ VTSCSI_REQ_STATE_ABORTED ;
 scalar_t__ VTSCSI_REQ_STATE_INUSE ;
 int VTSCSI_TRACE ;
 scalar_t__ XPT_SCSI_IO ;
 int callout_stop (int *) ;
 int sglist_append (struct sglist*,struct virtio_scsi_ctrl_tmf_resp*,int) ;
 int sglist_reset (struct sglist*) ;
 int vtscsi_complete_abort_task_cmd ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,int,struct vtscsi_request*,struct ccb_hdr*,struct vtscsi_request*) ;
 int vtscsi_execute_ctrl_req (struct vtscsi_softc*,struct vtscsi_request*,struct sglist*,int,int,int ) ;
 int vtscsi_init_ctrl_tmf_req (struct ccb_hdr*,int ,uintptr_t,struct virtio_scsi_ctrl_tmf_resp*) ;

__attribute__((used)) static int
vtscsi_execute_abort_task_cmd(struct vtscsi_softc *sc,
    struct vtscsi_request *req)
{
 struct sglist *sg;
 struct ccb_abort *cab;
 struct ccb_hdr *ccbh;
 struct ccb_hdr *abort_ccbh;
 struct vtscsi_request *abort_req;
 struct virtio_scsi_ctrl_tmf_req *tmf_req;
 struct virtio_scsi_ctrl_tmf_resp *tmf_resp;
 int error;

 sg = sc->vtscsi_sglist;
 cab = &req->vsr_ccb->cab;
 ccbh = &cab->ccb_h;
 tmf_req = &req->vsr_tmf_req;
 tmf_resp = &req->vsr_tmf_resp;


 abort_ccbh = &cab->abort_ccb->ccb_h;
 abort_req = abort_ccbh->ccbh_vtscsi_req;

 if (abort_ccbh->func_code != XPT_SCSI_IO || abort_req == ((void*)0)) {
  error = EINVAL;
  goto fail;
 }


 if (abort_req->vsr_state != VTSCSI_REQ_STATE_INUSE) {
  error = EALREADY;
  goto fail;
 }

 abort_req->vsr_state = VTSCSI_REQ_STATE_ABORTED;
 if (abort_req->vsr_flags & VTSCSI_REQ_FLAG_TIMEOUT_SET)
  callout_stop(&abort_req->vsr_callout);

 vtscsi_init_ctrl_tmf_req(ccbh, VIRTIO_SCSI_T_TMF_ABORT_TASK,
     (uintptr_t) abort_ccbh, tmf_req);

 sglist_reset(sg);
 sglist_append(sg, tmf_req, sizeof(struct virtio_scsi_ctrl_tmf_req));
 sglist_append(sg, tmf_resp, sizeof(struct virtio_scsi_ctrl_tmf_resp));

 req->vsr_complete = vtscsi_complete_abort_task_cmd;
 tmf_resp->response = -1;

 error = vtscsi_execute_ctrl_req(sc, req, sg, 1, 1,
     VTSCSI_EXECUTE_ASYNC);

fail:
 vtscsi_dprintf(sc, VTSCSI_TRACE, "error=%d req=%p abort_ccb=%p "
     "abort_req=%p\n", error, req, abort_ccbh, abort_req);

 return (error);
}

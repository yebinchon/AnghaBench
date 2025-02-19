
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtscsi_softc {struct virtqueue* vtscsi_request_vq; struct sglist* vtscsi_sglist; } ;
struct virtio_scsi_cmd_resp {int response; } ;
struct virtio_scsi_cmd_req {int dummy; } ;
struct vtscsi_request {int vsr_callout; int vsr_flags; int vsr_complete; struct virtio_scsi_cmd_resp vsr_cmd_resp; struct virtio_scsi_cmd_req vsr_cmd_req; TYPE_1__* vsr_ccb; } ;
struct virtqueue {int dummy; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {int timeout; struct vtscsi_request* ccbh_vtscsi_req; int status; } ;
struct ccb_scsiio {struct ccb_hdr ccb_h; } ;
struct TYPE_2__ {struct ccb_scsiio csio; } ;


 int CAM_REQUEUE_REQ ;
 int CAM_SIM_QUEUED ;
 int CAM_TIME_INFINITY ;
 int SBT_1MS ;
 int VTSCSI_ERROR ;
 int VTSCSI_REQUEST_VQ ;
 int VTSCSI_REQ_FLAG_TIMEOUT_SET ;
 int VTSCSI_TRACE ;
 int callout_reset_sbt (int *,int,int ,int ,struct vtscsi_request*,int ) ;
 int virtqueue_enqueue (struct virtqueue*,struct vtscsi_request*,struct sglist*,int,int) ;
 int virtqueue_notify (struct virtqueue*) ;
 int vtscsi_complete_scsi_cmd ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,int,struct vtscsi_request*,struct ccb_hdr*) ;
 int vtscsi_dprintf_req (struct vtscsi_request*,int ,char*,struct vtscsi_request*,struct ccb_hdr*) ;
 int vtscsi_fill_scsi_cmd_sglist (struct vtscsi_softc*,struct vtscsi_request*,int*,int*) ;
 int vtscsi_freeze_simq (struct vtscsi_softc*,int ) ;
 int vtscsi_init_scsi_cmd_req (struct ccb_scsiio*,struct virtio_scsi_cmd_req*) ;
 int vtscsi_timedout_scsi_cmd ;

__attribute__((used)) static int
vtscsi_execute_scsi_cmd(struct vtscsi_softc *sc, struct vtscsi_request *req)
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

 vtscsi_init_scsi_cmd_req(csio, cmd_req);

 error = vtscsi_fill_scsi_cmd_sglist(sc, req, &readable, &writable);
 if (error)
  return (error);

 req->vsr_complete = vtscsi_complete_scsi_cmd;
 cmd_resp->response = -1;

 error = virtqueue_enqueue(vq, req, sg, readable, writable);
 if (error) {
  vtscsi_dprintf(sc, VTSCSI_ERROR,
      "enqueue error=%d req=%p ccb=%p\n", error, req, ccbh);

  ccbh->status = CAM_REQUEUE_REQ;
  vtscsi_freeze_simq(sc, VTSCSI_REQUEST_VQ);
  return (error);
 }

 ccbh->status |= CAM_SIM_QUEUED;
 ccbh->ccbh_vtscsi_req = req;

 virtqueue_notify(vq);

 if (ccbh->timeout != CAM_TIME_INFINITY) {
  req->vsr_flags |= VTSCSI_REQ_FLAG_TIMEOUT_SET;
  callout_reset_sbt(&req->vsr_callout, SBT_1MS * ccbh->timeout,
      0, vtscsi_timedout_scsi_cmd, req, 0);
 }

 vtscsi_dprintf_req(req, VTSCSI_TRACE, "enqueued req=%p ccb=%p\n",
     req, ccbh);

 return (0);
}

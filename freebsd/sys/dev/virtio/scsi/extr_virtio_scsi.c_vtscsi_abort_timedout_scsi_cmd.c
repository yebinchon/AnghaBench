
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtscsi_softc {struct sglist* vtscsi_sglist; } ;
struct virtio_scsi_ctrl_tmf_resp {int response; } ;
struct vtscsi_request {int vsr_complete; struct vtscsi_request* vsr_timedout_req; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_resp; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_req; TYPE_1__* vsr_ccb; } ;
struct virtio_scsi_ctrl_tmf_req {int response; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {int dummy; } ;
struct TYPE_2__ {struct ccb_hdr ccb_h; } ;


 int ENOBUFS ;
 int VIRTIO_SCSI_T_TMF_ABORT_TASK ;
 int VTSCSI_ERROR ;
 int VTSCSI_EXECUTE_ASYNC ;
 int sglist_append (struct sglist*,struct virtio_scsi_ctrl_tmf_resp*,int) ;
 int sglist_reset (struct sglist*) ;
 int vtscsi_complete_abort_timedout_scsi_cmd ;
 struct vtscsi_request* vtscsi_dequeue_request (struct vtscsi_softc*) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,int,struct vtscsi_request*,struct vtscsi_request*,struct ccb_hdr*) ;
 int vtscsi_enqueue_request (struct vtscsi_softc*,struct vtscsi_request*) ;
 int vtscsi_execute_ctrl_req (struct vtscsi_softc*,struct vtscsi_request*,struct sglist*,int,int,int ) ;
 int vtscsi_init_ctrl_tmf_req (struct ccb_hdr*,int ,uintptr_t,struct virtio_scsi_ctrl_tmf_resp*) ;

__attribute__((used)) static int
vtscsi_abort_timedout_scsi_cmd(struct vtscsi_softc *sc,
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

 req = vtscsi_dequeue_request(sc);
 if (req == ((void*)0)) {
  error = ENOBUFS;
  goto fail;
 }

 tmf_req = &req->vsr_tmf_req;
 tmf_resp = &req->vsr_tmf_resp;

 vtscsi_init_ctrl_tmf_req(to_ccbh, VIRTIO_SCSI_T_TMF_ABORT_TASK,
     (uintptr_t) to_ccbh, tmf_req);

 sglist_reset(sg);
 sglist_append(sg, tmf_req, sizeof(struct virtio_scsi_ctrl_tmf_req));
 sglist_append(sg, tmf_resp, sizeof(struct virtio_scsi_ctrl_tmf_resp));

 req->vsr_timedout_req = to_req;
 req->vsr_complete = vtscsi_complete_abort_timedout_scsi_cmd;
 tmf_resp->response = -1;

 error = vtscsi_execute_ctrl_req(sc, req, sg, 1, 1,
     VTSCSI_EXECUTE_ASYNC);
 if (error == 0)
  return (0);

 vtscsi_enqueue_request(sc, req);

fail:
 vtscsi_dprintf(sc, VTSCSI_ERROR, "error=%d req=%p "
     "timedout req=%p ccb=%p\n", error, req, to_req, to_ccbh);

 return (error);
}

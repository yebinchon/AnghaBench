
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_hdr {int status; } ;
union ccb {struct ccb_hdr ccb_h; } ;
struct vtscsi_softc {int dummy; } ;
struct virtio_scsi_ctrl_tmf_resp {int response; } ;
struct vtscsi_request {struct virtio_scsi_ctrl_tmf_resp vsr_tmf_resp; union ccb* vsr_ccb; } ;


 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_UA_ABORT ;


 int vtscsi_enqueue_request (struct vtscsi_softc*,struct vtscsi_request*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vtscsi_complete_abort_task_cmd(struct vtscsi_softc *sc,
    struct vtscsi_request *req)
{
 union ccb *ccb;
 struct ccb_hdr *ccbh;
 struct virtio_scsi_ctrl_tmf_resp *tmf_resp;

 ccb = req->vsr_ccb;
 ccbh = &ccb->ccb_h;
 tmf_resp = &req->vsr_tmf_resp;

 switch (tmf_resp->response) {
 case 129:
  ccbh->status = CAM_REQ_CMP;
  break;
 case 128:
  ccbh->status = CAM_UA_ABORT;
  break;
 default:
  ccbh->status = CAM_REQ_CMP_ERR;
  break;
 }

 xpt_done(ccb);
 vtscsi_enqueue_request(sc, req);
}

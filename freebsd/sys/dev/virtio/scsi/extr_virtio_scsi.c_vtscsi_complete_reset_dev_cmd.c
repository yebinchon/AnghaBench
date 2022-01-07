
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_hdr {int status; int target_lun; int target_id; } ;
union ccb {struct ccb_hdr ccb_h; } ;
struct vtscsi_softc {int dummy; } ;
struct virtio_scsi_ctrl_tmf_resp {scalar_t__ response; } ;
struct vtscsi_request {struct virtio_scsi_ctrl_tmf_resp vsr_tmf_resp; union ccb* vsr_ccb; } ;


 int AC_SENT_BDR ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 scalar_t__ VIRTIO_SCSI_S_FUNCTION_COMPLETE ;
 int VTSCSI_TRACE ;
 int vtscsi_announce (struct vtscsi_softc*,int ,int ,int ) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,struct vtscsi_request*,union ccb*,scalar_t__) ;
 int vtscsi_enqueue_request (struct vtscsi_softc*,struct vtscsi_request*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vtscsi_complete_reset_dev_cmd(struct vtscsi_softc *sc,
    struct vtscsi_request *req)
{
 union ccb *ccb;
 struct ccb_hdr *ccbh;
 struct virtio_scsi_ctrl_tmf_resp *tmf_resp;

 ccb = req->vsr_ccb;
 ccbh = &ccb->ccb_h;
 tmf_resp = &req->vsr_tmf_resp;

 vtscsi_dprintf(sc, VTSCSI_TRACE, "req=%p ccb=%p response=%d\n",
     req, ccb, tmf_resp->response);

 if (tmf_resp->response == VIRTIO_SCSI_S_FUNCTION_COMPLETE) {
  ccbh->status = CAM_REQ_CMP;
  vtscsi_announce(sc, AC_SENT_BDR, ccbh->target_id,
      ccbh->target_lun);
 } else
  ccbh->status = CAM_REQ_CMP_ERR;

 xpt_done(ccb);
 vtscsi_enqueue_request(sc, req);
}

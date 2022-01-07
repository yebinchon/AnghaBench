
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vtscsi_softc {struct sglist* vtscsi_sglist; } ;
struct virtio_scsi_ctrl_tmf_resp {int response; } ;
struct vtscsi_request {int vsr_complete; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_resp; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_req; TYPE_1__* vsr_ccb; } ;
struct virtio_scsi_ctrl_tmf_req {int response; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {scalar_t__ target_lun; } ;
struct ccb_resetdev {struct ccb_hdr ccb_h; } ;
struct TYPE_2__ {struct ccb_resetdev crd; } ;


 scalar_t__ CAM_LUN_WILDCARD ;
 int VIRTIO_SCSI_T_TMF_I_T_NEXUS_RESET ;
 int VIRTIO_SCSI_T_TMF_LOGICAL_UNIT_RESET ;
 int VTSCSI_EXECUTE_ASYNC ;
 int VTSCSI_TRACE ;
 int sglist_append (struct sglist*,struct virtio_scsi_ctrl_tmf_resp*,int) ;
 int sglist_reset (struct sglist*) ;
 int vtscsi_complete_reset_dev_cmd ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,int,struct vtscsi_request*,struct ccb_hdr*) ;
 int vtscsi_execute_ctrl_req (struct vtscsi_softc*,struct vtscsi_request*,struct sglist*,int,int,int ) ;
 int vtscsi_init_ctrl_tmf_req (struct ccb_hdr*,int ,int ,struct virtio_scsi_ctrl_tmf_resp*) ;

__attribute__((used)) static int
vtscsi_execute_reset_dev_cmd(struct vtscsi_softc *sc,
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

 vtscsi_init_ctrl_tmf_req(ccbh, subtype, 0, tmf_req);

 sglist_reset(sg);
 sglist_append(sg, tmf_req, sizeof(struct virtio_scsi_ctrl_tmf_req));
 sglist_append(sg, tmf_resp, sizeof(struct virtio_scsi_ctrl_tmf_resp));

 req->vsr_complete = vtscsi_complete_reset_dev_cmd;
 tmf_resp->response = -1;

 error = vtscsi_execute_ctrl_req(sc, req, sg, 1, 1,
     VTSCSI_EXECUTE_ASYNC);

 vtscsi_dprintf(sc, VTSCSI_TRACE, "error=%d req=%p ccb=%p\n",
     error, req, ccbh);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct virtio_scsi_ctrl_tmf_req {uintptr_t tag; int subtype; int type; int lun; } ;
struct ccb_hdr {int dummy; } ;


 int VIRTIO_SCSI_T_TMF ;
 int vtscsi_set_request_lun (struct ccb_hdr*,int ) ;

__attribute__((used)) static void
vtscsi_init_ctrl_tmf_req(struct ccb_hdr *ccbh, uint32_t subtype,
    uintptr_t tag, struct virtio_scsi_ctrl_tmf_req *tmf_req)
{

 vtscsi_set_request_lun(ccbh, tmf_req->lun);

 tmf_req->type = VIRTIO_SCSI_T_TMF;
 tmf_req->subtype = subtype;
 tmf_req->tag = tag;
}

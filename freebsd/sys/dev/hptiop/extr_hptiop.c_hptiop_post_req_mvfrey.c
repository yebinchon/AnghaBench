
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int flags; int target_lun; int target_id; } ;
struct TYPE_10__ {int * cdb_bytes; int * cdb_ptr; } ;
struct TYPE_11__ {scalar_t__ dxfer_len; int cdb_len; TYPE_1__ cdb_io; } ;
union ccb {TYPE_3__ ccb_h; TYPE_2__ csio; } ;
typedef int u_int8_t ;
typedef int u_int64_t ;
struct hpt_iopsg {int pci_address; int eot; int size; } ;
struct hpt_iop_srb {int phy_addr; int index; int timeout; int dma_map; union ccb* ccb; } ;
struct TYPE_16__ {int type; int size; int flags; int context; int result; } ;
struct hpt_iop_request_scsi_command {TYPE_7__ header; int lun; int target; scalar_t__ channel; scalar_t__ dataxfer_length; int cdb; struct hpt_iopsg* sg_list; } ;
struct TYPE_14__ {int inlist_wptr; int list_count; TYPE_4__* inlist; } ;
struct TYPE_15__ {TYPE_5__ mvfrey; } ;
struct hpt_iop_hba {TYPE_6__ u; int io_dmat; } ;
struct TYPE_17__ {int ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_8__ bus_dma_segment_t ;
struct TYPE_13__ {int addr; int intrfc_len; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_SPACE_RD4_MVFREY2 (int ) ;
 int BUS_SPACE_WRT4_MVFREY2 (int ,int) ;
 int CAM_CDB_POINTER ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_OUT ;
 int CL_POINTER_TOGGLE ;
 int IOPMU_QUEUE_ADDR_HOST_BIT ;
 int IOP_REQUEST_FLAG_ADDR_BITS ;
 int IOP_REQUEST_FLAG_OUTPUT_CONTEXT ;
 int IOP_REQUEST_TYPE_SCSI_COMMAND ;
 int IOP_RESULT_PENDING ;
 int bcopy (int *,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int callout_reset (int *,int,int ,struct hpt_iop_hba*) ;
 int hptiop_reset_adapter ;
 int hz ;
 int inbound_write_ptr ;

__attribute__((used)) static void hptiop_post_req_mvfrey(struct hpt_iop_hba *hba,
    struct hpt_iop_srb *srb,
    bus_dma_segment_t *segs, int nsegs)
{
 int idx, index;
 union ccb *ccb = srb->ccb;
 u_int8_t *cdb;
 struct hpt_iop_request_scsi_command *req;
 u_int64_t req_phy;

 req = (struct hpt_iop_request_scsi_command *)srb;
 req_phy = srb->phy_addr;

 if (ccb->csio.dxfer_len && nsegs > 0) {
  struct hpt_iopsg *psg = req->sg_list;
  for (idx = 0; idx < nsegs; idx++, psg++) {
   psg->pci_address = (u_int64_t)segs[idx].ds_addr | 1;
   psg->size = segs[idx].ds_len;
   psg->eot = 0;
  }
  psg[-1].eot = 1;
 }
 if (ccb->ccb_h.flags & CAM_CDB_POINTER)
  cdb = ccb->csio.cdb_io.cdb_ptr;
 else
  cdb = ccb->csio.cdb_io.cdb_bytes;

 bcopy(cdb, req->cdb, ccb->csio.cdb_len);
 req->header.type = IOP_REQUEST_TYPE_SCSI_COMMAND;
 req->header.result = IOP_RESULT_PENDING;
 req->dataxfer_length = ccb->csio.dxfer_len;
 req->channel = 0;
 req->target = ccb->ccb_h.target_id;
 req->lun = ccb->ccb_h.target_lun;
 req->header.size = sizeof(struct hpt_iop_request_scsi_command)
    - sizeof(struct hpt_iopsg)
    + nsegs * sizeof(struct hpt_iopsg);
 if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
  bus_dmamap_sync(hba->io_dmat,
   srb->dma_map, BUS_DMASYNC_PREREAD);
 }
 else if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_OUT)
  bus_dmamap_sync(hba->io_dmat,
   srb->dma_map, BUS_DMASYNC_PREWRITE);

 req->header.flags = IOP_REQUEST_FLAG_OUTPUT_CONTEXT
      | IOP_REQUEST_FLAG_ADDR_BITS
      | ((req_phy >> 16) & 0xffff0000);
 req->header.context = ((req_phy & 0xffffffff) << 32 )
      | srb->index << 4
      | IOPMU_QUEUE_ADDR_HOST_BIT | req->header.type;

 hba->u.mvfrey.inlist_wptr++;
 index = hba->u.mvfrey.inlist_wptr & 0x3fff;

 if (index == hba->u.mvfrey.list_count) {
  index = 0;
  hba->u.mvfrey.inlist_wptr &= ~0x3fff;
  hba->u.mvfrey.inlist_wptr ^= CL_POINTER_TOGGLE;
 }

 hba->u.mvfrey.inlist[index].addr = req_phy;
 hba->u.mvfrey.inlist[index].intrfc_len = (req->header.size + 3) / 4;

 BUS_SPACE_WRT4_MVFREY2(inbound_write_ptr, hba->u.mvfrey.inlist_wptr);
 BUS_SPACE_RD4_MVFREY2(inbound_write_ptr);

 if (req->header.type == IOP_REQUEST_TYPE_SCSI_COMMAND) {
  callout_reset(&srb->timeout, 20 * hz, hptiop_reset_adapter, hba);
 }
}

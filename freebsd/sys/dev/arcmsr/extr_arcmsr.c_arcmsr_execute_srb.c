
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_id; int target_lun; int status; int timeout; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
typedef int u_int8_t ;
struct CommandControlBlock {int srb_flags; int ccb_callout; int dm_segs_dmamap; union ccb* pccb; scalar_t__ acb; } ;
struct AdapterControlBlock {int pci_unit; int acb_flags; scalar_t__** devstate; scalar_t__ srboutstandingcount; scalar_t__ maxOutstanding; int psim; int dm_segs_dmat; int pktRequestCount; } ;
typedef int bus_dma_segment_t ;


 int ACB_F_BUS_RESET ;
 int ACB_F_CAM_DEV_QFRZN ;
 int ARCMSR_MAX_SG_ENTRIES ;
 int ARCMSR_TIMEOUT_DELAY ;
 scalar_t__ ARECA_RAID_GONE ;
 int CAM_DEV_NOT_THERE ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_INPROG ;
 int CAM_REQ_TOO_BIG ;
 int CAM_SCSI_BUS_RESET ;
 int CAM_SIM_QUEUED ;
 int CAM_STATUS_MASK ;
 int CAM_TIME_INFINITY ;
 int EFBIG ;
 int SBT_1MS ;
 int SRB_FLAG_TIMER_START ;
 int arcmsr_build_srb (struct CommandControlBlock*,int *,int) ;
 int arcmsr_callout_init (int *) ;
 int arcmsr_post_srb (struct AdapterControlBlock*,struct CommandControlBlock*) ;
 int arcmsr_srb_complete (struct CommandControlBlock*,int ) ;
 int arcmsr_srb_timeout ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_reset_sbt (int *,int,int ,int ,struct CommandControlBlock*,int ) ;
 int printf (char*,int,...) ;
 int* scsiio_cdb_ptr (int *) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void arcmsr_execute_srb(void *arg, bus_dma_segment_t *dm_segs, int nseg, int error)
{
 struct CommandControlBlock *srb = (struct CommandControlBlock *)arg;
 struct AdapterControlBlock *acb = (struct AdapterControlBlock *)srb->acb;
 union ccb *pccb;
 int target, lun;

 pccb = srb->pccb;
 target = pccb->ccb_h.target_id;
 lun = pccb->ccb_h.target_lun;
 acb->pktRequestCount++;
 if(error != 0) {
  if(error != EFBIG) {
   printf("arcmsr%d: unexpected error %x"
    " returned from 'bus_dmamap_load' \n"
    , acb->pci_unit, error);
  }
  if((pccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_INPROG) {
   pccb->ccb_h.status |= CAM_REQ_TOO_BIG;
  }
  arcmsr_srb_complete(srb, 0);
  return;
 }
 if(nseg > ARCMSR_MAX_SG_ENTRIES) {
  pccb->ccb_h.status |= CAM_REQ_TOO_BIG;
  arcmsr_srb_complete(srb, 0);
  return;
 }
 if(acb->acb_flags & ACB_F_BUS_RESET) {
  printf("arcmsr%d: bus reset and return busy \n", acb->pci_unit);
  pccb->ccb_h.status |= CAM_SCSI_BUS_RESET;
  arcmsr_srb_complete(srb, 0);
  return;
 }
 if(acb->devstate[target][lun] == ARECA_RAID_GONE) {
  u_int8_t block_cmd, cmd;

  cmd = scsiio_cdb_ptr(&pccb->csio)[0];
  block_cmd = cmd & 0x0f;
  if(block_cmd == 0x08 || block_cmd == 0x0a) {
   printf("arcmsr%d:block 'read/write' command "
    "with gone raid volume Cmd=0x%2x, TargetId=%d, Lun=%d \n"
    , acb->pci_unit, cmd, target, lun);
   pccb->ccb_h.status |= CAM_DEV_NOT_THERE;
   arcmsr_srb_complete(srb, 0);
   return;
  }
 }
 if((pccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_INPROG) {
  if(nseg != 0) {
   bus_dmamap_unload(acb->dm_segs_dmat, srb->dm_segs_dmamap);
  }
  arcmsr_srb_complete(srb, 0);
  return;
 }
 if(acb->srboutstandingcount >= acb->maxOutstanding) {
  if((acb->acb_flags & ACB_F_CAM_DEV_QFRZN) == 0)
  {
   xpt_freeze_simq(acb->psim, 1);
   acb->acb_flags |= ACB_F_CAM_DEV_QFRZN;
  }
  pccb->ccb_h.status &= ~CAM_SIM_QUEUED;
  pccb->ccb_h.status |= CAM_REQUEUE_REQ;
  arcmsr_srb_complete(srb, 0);
  return;
 }
 pccb->ccb_h.status |= CAM_SIM_QUEUED;
 arcmsr_build_srb(srb, dm_segs, nseg);
 arcmsr_post_srb(acb, srb);
 if (pccb->ccb_h.timeout != CAM_TIME_INFINITY)
 {
  arcmsr_callout_init(&srb->ccb_callout);
  callout_reset_sbt(&srb->ccb_callout, SBT_1MS *
      (pccb->ccb_h.timeout + (ARCMSR_TIMEOUT_DELAY * 1000)), 0,
      arcmsr_srb_timeout, srb, 0);
  srb->srb_flags |= SRB_FLAG_TIMER_START;
 }
}

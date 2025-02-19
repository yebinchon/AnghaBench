
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u_int32_t ;
typedef size_t u_int16_t ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_3__* pccb; struct AdapterControlBlock* acb; } ;
struct AdapterControlBlock {int doneq_index; scalar_t__ srboutstandingcount; int completionQ_entry; int pci_unit; TYPE_1__* pCompletionQ; struct CommandControlBlock** psrb_pool; int srb_dmamap; int srb_dmat; } ;
struct TYPE_5__ {int target_id; int status; scalar_t__ target_lun; } ;
struct TYPE_6__ {TYPE_2__ ccb_h; } ;
struct TYPE_4__ {size_t cmdSMID; int cmdFlag; } ;


 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ;
 scalar_t__ ARCMSR_SRB_ABORTED ;
 scalar_t__ ARCMSR_SRB_START ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_REQ_ABORTED ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 size_t FALSE ;
 int HBE_MessageUnit ;
 size_t TRUE ;
 int UDELAY (int) ;
 int arcmsr_report_srb_state (struct AdapterControlBlock*,struct CommandControlBlock*,size_t) ;
 int arcmsr_srb_complete (struct CommandControlBlock*,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int printf (char*,int,...) ;
 int reply_post_producer_index ;

__attribute__((used)) static void arcmsr_polling_hbe_srbdone(struct AdapterControlBlock *acb, struct CommandControlBlock *poll_srb)
{
 struct CommandControlBlock *srb;
 u_int32_t poll_srb_done=0, poll_count=0, doneq_index;
 u_int16_t error, cmdSMID;

polling_ccb_retry:
 poll_count++;
 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap, BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 while(1) {
  doneq_index = acb->doneq_index;
  if((CHIP_REG_READ32(HBE_MessageUnit, 0, reply_post_producer_index) & 0xFFFF) == doneq_index) {
   if(poll_srb_done) {
    break;
   } else {
    UDELAY(25000);
       if ((poll_count > 100) && (poll_srb != ((void*)0))) {
     break;
    }
       if (acb->srboutstandingcount == 0) {
        break;
       }
    goto polling_ccb_retry;
   }
  }
  cmdSMID = acb->pCompletionQ[doneq_index].cmdSMID;
  doneq_index++;
  if (doneq_index >= acb->completionQ_entry)
   doneq_index = 0;
  acb->doneq_index = doneq_index;
  srb = acb->psrb_pool[cmdSMID];
  error = (acb->pCompletionQ[doneq_index].cmdFlag & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1) ? TRUE : FALSE;
  if (poll_srb != ((void*)0))
   poll_srb_done = (srb == poll_srb) ? 1:0;
  if((srb->acb != acb) || (srb->srb_state != ARCMSR_SRB_START)) {
   if(srb->srb_state == ARCMSR_SRB_ABORTED) {
    printf("arcmsr%d: scsi id=%d lun=%jx srb='%p'poll command abort successfully \n"
      , acb->pci_unit, srb->pccb->ccb_h.target_id, (uintmax_t)srb->pccb->ccb_h.target_lun, srb);
    srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
    arcmsr_srb_complete(srb, 1);
    continue;
   }
   printf("arcmsr%d: polling get an illegal srb command done srb='%p'srboutstandingcount=%d \n"
     , acb->pci_unit, srb, acb->srboutstandingcount);
   continue;
  }
  arcmsr_report_srb_state(acb, srb, error);
 }
 CHIP_REG_WRITE32(HBE_MessageUnit, 0, reply_post_producer_index, doneq_index);
}

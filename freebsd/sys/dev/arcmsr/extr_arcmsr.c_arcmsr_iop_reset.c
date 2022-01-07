
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef size_t u_int32_t ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_2__* pccb; } ;
struct AdapterControlBlock {scalar_t__ srboutstandingcount; int pci_unit; scalar_t__ pktReturnCount; scalar_t__ pktRequestCount; scalar_t__ workingsrb_startindex; scalar_t__ workingsrb_doneindex; struct CommandControlBlock** psrb_pool; } ;
struct TYPE_3__ {int target_id; scalar_t__ target_lun; int status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 size_t ARCMSR_MAX_FREESRB_NUM ;
 scalar_t__ ARCMSR_SRB_ABORTED ;
 scalar_t__ ARCMSR_SRB_START ;
 int CAM_REQ_ABORTED ;
 int arcmsr_abort_allcmd (struct AdapterControlBlock*) ;
 size_t arcmsr_disable_allintr (struct AdapterControlBlock*) ;
 int arcmsr_done4abort_postqueue (struct AdapterControlBlock*) ;
 int arcmsr_enable_allintr (struct AdapterControlBlock*,size_t) ;
 int arcmsr_srb_complete (struct CommandControlBlock*,int) ;
 int printf (char*,int,int,int ,struct CommandControlBlock*) ;

__attribute__((used)) static void arcmsr_iop_reset(struct AdapterControlBlock *acb)
{
 struct CommandControlBlock *srb;
 u_int32_t intmask_org;
 u_int32_t i=0;

 if(acb->srboutstandingcount>0) {

  intmask_org = arcmsr_disable_allintr(acb);

  arcmsr_done4abort_postqueue(acb);

  arcmsr_abort_allcmd(acb);
  for(i=0; i < ARCMSR_MAX_FREESRB_NUM; i++) {
   srb = acb->psrb_pool[i];
   if(srb->srb_state == ARCMSR_SRB_START) {
    srb->srb_state = ARCMSR_SRB_ABORTED;
    srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
    arcmsr_srb_complete(srb, 1);
    printf("arcmsr%d: scsi id=%d lun=%jx srb='%p' aborted\n"
      , acb->pci_unit, srb->pccb->ccb_h.target_id
      , (uintmax_t)srb->pccb->ccb_h.target_lun, srb);
   }
  }

  arcmsr_enable_allintr(acb, intmask_org);
 }
 acb->srboutstandingcount = 0;
 acb->workingsrb_doneindex = 0;
 acb->workingsrb_startindex = 0;
 acb->pktRequestCount = 0;
 acb->pktReturnCount = 0;
}

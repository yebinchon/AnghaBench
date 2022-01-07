
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_id; scalar_t__ target_lun; scalar_t__ arcmsr_ccbacb_ptr; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uintmax_t ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct CommandControlBlock {scalar_t__ srb_state; union ccb* pccb; } ;
struct AdapterControlBlock {scalar_t__ srboutstandingcount; int pci_unit; struct CommandControlBlock** psrb_pool; int num_aborts; } ;


 int ARCMSR_MAX_FREESRB_NUM ;
 scalar_t__ ARCMSR_SRB_ABORTED ;
 scalar_t__ ARCMSR_SRB_START ;
 int FALSE ;
 int TRUE ;
 int arcmsr_disable_allintr (struct AdapterControlBlock*) ;
 int arcmsr_enable_allintr (struct AdapterControlBlock*,int ) ;
 int arcmsr_polling_srbdone (struct AdapterControlBlock*,struct CommandControlBlock*) ;
 int printf (char*,int,int,int ,struct CommandControlBlock*) ;

__attribute__((used)) static u_int8_t arcmsr_seek_cmd2abort(union ccb *abortccb)
{
 struct CommandControlBlock *srb;
 struct AdapterControlBlock *acb = (struct AdapterControlBlock *) abortccb->ccb_h.arcmsr_ccbacb_ptr;
 u_int32_t intmask_org;
 int i = 0;

 acb->num_aborts++;
 if(acb->srboutstandingcount != 0) {

  intmask_org = arcmsr_disable_allintr(acb);
  for(i=0; i < ARCMSR_MAX_FREESRB_NUM; i++) {
   srb = acb->psrb_pool[i];
   if(srb->srb_state == ARCMSR_SRB_START) {
    if(srb->pccb == abortccb) {
     srb->srb_state = ARCMSR_SRB_ABORTED;
     printf("arcmsr%d:scsi id=%d lun=%jx abort srb '%p'"
      "outstanding command \n"
      , acb->pci_unit, abortccb->ccb_h.target_id
      , (uintmax_t)abortccb->ccb_h.target_lun, srb);
     arcmsr_polling_srbdone(acb, srb);

     arcmsr_enable_allintr(acb, intmask_org);
     return (TRUE);
    }
   }
  }

  arcmsr_enable_allintr(acb, intmask_org);
 }
 return(FALSE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_2__* pccb; } ;
struct AdapterControlBlock {scalar_t__ srboutstandingcount; int isr_lock; scalar_t__ pktReturnCount; scalar_t__ pktRequestCount; scalar_t__ workingsrb_startindex; scalar_t__ workingsrb_doneindex; struct CommandControlBlock** psrb_pool; int acb_flags; } ;
typedef int device_t ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int ACB_F_IOP_INITED ;
 int ACB_F_SCSISTOPADAPTER ;
 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 size_t ARCMSR_MAX_FREESRB_NUM ;
 scalar_t__ ARCMSR_SRB_ABORTED ;
 scalar_t__ ARCMSR_SRB_START ;
 int CAM_REQ_ABORTED ;
 int arcmsr_abort_allcmd (struct AdapterControlBlock*) ;
 size_t arcmsr_disable_allintr (struct AdapterControlBlock*) ;
 int arcmsr_done4abort_postqueue (struct AdapterControlBlock*) ;
 int arcmsr_flush_adapter_cache (struct AdapterControlBlock*) ;
 int arcmsr_srb_complete (struct CommandControlBlock*,int) ;
 int arcmsr_stop_adapter_bgrb (struct AdapterControlBlock*) ;
 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static int arcmsr_shutdown(device_t dev)
{
 u_int32_t i;
 u_int32_t intmask_org;
 struct CommandControlBlock *srb;
 struct AdapterControlBlock *acb=(struct AdapterControlBlock *)device_get_softc(dev);


 ARCMSR_LOCK_ACQUIRE(&acb->isr_lock);

 intmask_org = arcmsr_disable_allintr(acb);
 arcmsr_stop_adapter_bgrb(acb);
 arcmsr_flush_adapter_cache(acb);

 acb->acb_flags |= ACB_F_SCSISTOPADAPTER;
 acb->acb_flags &= ~ACB_F_IOP_INITED;
 if(acb->srboutstandingcount != 0) {

  arcmsr_done4abort_postqueue(acb);

  arcmsr_abort_allcmd(acb);
  for(i=0; i < ARCMSR_MAX_FREESRB_NUM; i++) {
   srb = acb->psrb_pool[i];
   if(srb->srb_state == ARCMSR_SRB_START) {
    srb->srb_state = ARCMSR_SRB_ABORTED;
    srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
    arcmsr_srb_complete(srb, 1);
   }
  }
 }
 acb->srboutstandingcount = 0;
 acb->workingsrb_doneindex = 0;
 acb->workingsrb_startindex = 0;
 acb->pktRequestCount = 0;
 acb->pktReturnCount = 0;
 ARCMSR_LOCK_RELEASE(&acb->isr_lock);
 return (0);
}

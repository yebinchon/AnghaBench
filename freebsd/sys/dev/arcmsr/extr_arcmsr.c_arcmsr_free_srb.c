
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CommandControlBlock {scalar_t__ srb_flags; int srb_state; struct AdapterControlBlock* acb; } ;
struct AdapterControlBlock {size_t workingsrb_doneindex; int srb_lock; struct CommandControlBlock** srbworkingQ; } ;


 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 size_t ARCMSR_MAX_FREESRB_NUM ;
 int ARCMSR_SRB_DONE ;

__attribute__((used)) static void arcmsr_free_srb(struct CommandControlBlock *srb)
{
 struct AdapterControlBlock *acb;

 acb = srb->acb;
 ARCMSR_LOCK_ACQUIRE(&acb->srb_lock);
 srb->srb_state = ARCMSR_SRB_DONE;
 srb->srb_flags = 0;
 acb->srbworkingQ[acb->workingsrb_doneindex] = srb;
 acb->workingsrb_doneindex++;
 acb->workingsrb_doneindex %= ARCMSR_MAX_FREESRB_NUM;
 ARCMSR_LOCK_RELEASE(&acb->srb_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct CommandControlBlock {int dummy; } ;
struct AdapterControlBlock {size_t workingsrb_doneindex; size_t workingsrb_startindex; int srb_lock; struct CommandControlBlock** srbworkingQ; } ;


 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 size_t ARCMSR_MAX_FREESRB_NUM ;

__attribute__((used)) static struct CommandControlBlock *arcmsr_get_freesrb(struct AdapterControlBlock *acb)
{
 struct CommandControlBlock *srb = ((void*)0);
 u_int32_t workingsrb_startindex, workingsrb_doneindex;

 ARCMSR_LOCK_ACQUIRE(&acb->srb_lock);
 workingsrb_doneindex = acb->workingsrb_doneindex;
 workingsrb_startindex = acb->workingsrb_startindex;
 srb = acb->srbworkingQ[workingsrb_startindex];
 workingsrb_startindex++;
 workingsrb_startindex %= ARCMSR_MAX_FREESRB_NUM;
 if(workingsrb_doneindex != workingsrb_startindex) {
  acb->workingsrb_startindex = workingsrb_startindex;
 } else {
  srb = ((void*)0);
 }
 ARCMSR_LOCK_RELEASE(&acb->srb_lock);
 return(srb);
}

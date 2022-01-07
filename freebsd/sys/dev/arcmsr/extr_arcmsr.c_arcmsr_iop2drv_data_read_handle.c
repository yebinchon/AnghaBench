
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {scalar_t__ wqbuf_firstindex; scalar_t__ wqbuf_lastindex; int qbuffer_lock; int acb_flags; } ;


 int ACB_F_MESSAGE_WQBUFFER_CLEARED ;
 int ACB_F_MESSAGE_WQBUFFER_READ ;
 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 int arcmsr_Write_data_2iop_wqbuffer (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_iop2drv_data_read_handle(struct AdapterControlBlock *acb)
{
 ARCMSR_LOCK_ACQUIRE(&acb->qbuffer_lock);
 acb->acb_flags |= ACB_F_MESSAGE_WQBUFFER_READ;






 if(acb->wqbuf_firstindex != acb->wqbuf_lastindex) {
  arcmsr_Write_data_2iop_wqbuffer(acb);
 }
 if(acb->wqbuf_firstindex == acb->wqbuf_lastindex) {
  acb->acb_flags |= ACB_F_MESSAGE_WQBUFFER_CLEARED;
 }
 ARCMSR_LOCK_RELEASE(&acb->qbuffer_lock);
}

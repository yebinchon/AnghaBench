
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct QBUFFER {int data_len; } ;
struct AdapterControlBlock {int rqbuf_lastindex; int rqbuf_firstindex; int qbuffer_lock; int acb_flags; } ;


 int ACB_F_IOPDATA_OVERFLOW ;
 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 int ARCMSR_MAX_QBUFFER ;
 scalar_t__ arcmsr_Read_iop_rqbuffer_data (struct AdapterControlBlock*,struct QBUFFER*) ;
 struct QBUFFER* arcmsr_get_iop_rqbuffer (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_iop2drv_data_wrote_handle(struct AdapterControlBlock *acb)
{
 struct QBUFFER *prbuffer;
 int my_empty_len;


 ARCMSR_LOCK_ACQUIRE(&acb->qbuffer_lock);
 prbuffer = arcmsr_get_iop_rqbuffer(acb);
 my_empty_len = (acb->rqbuf_lastindex - acb->rqbuf_firstindex - 1) &
  (ARCMSR_MAX_QBUFFER-1);
 if(my_empty_len >= prbuffer->data_len) {
  if(arcmsr_Read_iop_rqbuffer_data(acb, prbuffer) == 0)
   acb->acb_flags |= ACB_F_IOPDATA_OVERFLOW;
 } else {
  acb->acb_flags |= ACB_F_IOPDATA_OVERFLOW;
 }
 ARCMSR_LOCK_RELEASE(&acb->qbuffer_lock);
}

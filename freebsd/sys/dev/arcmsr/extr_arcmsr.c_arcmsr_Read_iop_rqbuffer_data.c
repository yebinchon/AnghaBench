
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct QBUFFER {scalar_t__ data_len; scalar_t__ data; } ;
struct AdapterControlBlock {scalar_t__ adapter_type; size_t rqbuf_lastindex; int * rqbuffer; } ;


 scalar_t__ ACB_ADAPTER_TYPE_B ;
 size_t ARCMSR_MAX_QBUFFER ;
 scalar_t__ arcmsr_Read_iop_rqbuffer_data_D (struct AdapterControlBlock*,struct QBUFFER*) ;
 int arcmsr_iop_message_read (struct AdapterControlBlock*) ;

__attribute__((used)) static u_int32_t arcmsr_Read_iop_rqbuffer_data(struct AdapterControlBlock *acb,
 struct QBUFFER *prbuffer) {

 u_int8_t *pQbuffer;
 u_int8_t *iop_data;
 u_int32_t iop_len;

 if(acb->adapter_type >= ACB_ADAPTER_TYPE_B) {
  return(arcmsr_Read_iop_rqbuffer_data_D(acb, prbuffer));
 }
 iop_data = (u_int8_t *)prbuffer->data;
 iop_len = (u_int32_t)prbuffer->data_len;
 while (iop_len > 0) {
  pQbuffer = &acb->rqbuffer[acb->rqbuf_lastindex];
  *pQbuffer = *iop_data;
  acb->rqbuf_lastindex++;

  acb->rqbuf_lastindex %= ARCMSR_MAX_QBUFFER;
  iop_data++;
  iop_len--;
 }

 arcmsr_iop_message_read(acb);
 return (1);
}

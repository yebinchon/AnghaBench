
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct QBUFFER {scalar_t__ data_len; scalar_t__ data; } ;
struct AdapterControlBlock {size_t rqbuf_lastindex; int * rqbuffer; } ;


 size_t ARCMSR_MAX_QBUFFER ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int arcmsr_iop_message_read (struct AdapterControlBlock*) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static u_int32_t arcmsr_Read_iop_rqbuffer_data_D(struct AdapterControlBlock *acb,
 struct QBUFFER *prbuffer) {

 u_int8_t *pQbuffer;
 u_int8_t *buf1 = ((void*)0);
 u_int32_t *iop_data, *buf2 = ((void*)0);
 u_int32_t iop_len, data_len;

 iop_data = (u_int32_t *)prbuffer->data;
 iop_len = (u_int32_t)prbuffer->data_len;
 if ( iop_len > 0 )
 {
  buf1 = malloc(128, M_DEVBUF, M_NOWAIT | M_ZERO);
  buf2 = (u_int32_t *)buf1;
  if( buf1 == ((void*)0))
   return (0);
  data_len = iop_len;
  while(data_len >= 4)
  {
   *buf2++ = *iop_data++;
   data_len -= 4;
  }
  if(data_len)
   *buf2 = *iop_data;
  buf2 = (u_int32_t *)buf1;
 }
 while (iop_len > 0) {
  pQbuffer = &acb->rqbuffer[acb->rqbuf_lastindex];
  *pQbuffer = *buf1;
  acb->rqbuf_lastindex++;

  acb->rqbuf_lastindex %= ARCMSR_MAX_QBUFFER;
  buf1++;
  iop_len--;
 }
 if(buf2)
  free( (u_int8_t *)buf2, M_DEVBUF);

 arcmsr_iop_message_read(acb);
 return (1);
}

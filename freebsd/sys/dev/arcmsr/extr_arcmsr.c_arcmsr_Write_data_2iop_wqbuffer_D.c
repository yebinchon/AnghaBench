
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct QBUFFER {int data_len; scalar_t__ data; } ;
struct AdapterControlBlock {int acb_flags; size_t wqbuf_firstindex; size_t wqbuf_lastindex; int * wqbuffer; } ;


 int ACB_F_MESSAGE_WQBUFFER_READ ;
 size_t ARCMSR_MAX_QBUFFER ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct QBUFFER* arcmsr_get_iop_wqbuffer (struct AdapterControlBlock*) ;
 int arcmsr_iop_message_wrote (struct AdapterControlBlock*) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static void arcmsr_Write_data_2iop_wqbuffer_D(struct AdapterControlBlock *acb)
{
 u_int8_t *pQbuffer;
 struct QBUFFER *pwbuffer;
 u_int8_t *buf1 = ((void*)0);
 u_int32_t *iop_data, *buf2 = ((void*)0);
 u_int32_t allxfer_len = 0, data_len;

 if(acb->acb_flags & ACB_F_MESSAGE_WQBUFFER_READ) {
  buf1 = malloc(128, M_DEVBUF, M_NOWAIT | M_ZERO);
  buf2 = (u_int32_t *)buf1;
  if( buf1 == ((void*)0))
   return;

  acb->acb_flags &= (~ACB_F_MESSAGE_WQBUFFER_READ);
  pwbuffer = arcmsr_get_iop_wqbuffer(acb);
  iop_data = (u_int32_t *)pwbuffer->data;
  while((acb->wqbuf_firstindex != acb->wqbuf_lastindex)
   && (allxfer_len < 124)) {
   pQbuffer = &acb->wqbuffer[acb->wqbuf_firstindex];
   *buf1 = *pQbuffer;
   acb->wqbuf_firstindex++;
   acb->wqbuf_firstindex %= ARCMSR_MAX_QBUFFER;
   buf1++;
   allxfer_len++;
  }
  pwbuffer->data_len = allxfer_len;
  data_len = allxfer_len;
  buf1 = (u_int8_t *)buf2;
  while(data_len >= 4)
  {
   *iop_data++ = *buf2++;
   data_len -= 4;
  }
  if(data_len)
   *iop_data = *buf2;
  free( buf1, M_DEVBUF);
  arcmsr_iop_message_wrote(acb);
 }
}

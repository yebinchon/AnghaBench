
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_4__ {size_t streamincnt; TYPE_1__* strmin; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_3__ {int last_mid_delivered; } ;


 int SCTP_NOTIFY_STR_RESET_RECV ;
 int SCTP_SO_NOT_LOCKED ;
 size_t ntohs (size_t) ;
 int sctp_ulp_notify (int ,struct sctp_tcb*,size_t,void*,int ) ;

void
sctp_reset_in_stream(struct sctp_tcb *stcb, uint32_t number_entries, uint16_t *list)
{
 uint32_t i;
 uint16_t temp;






 if (number_entries) {
  for (i = 0; i < number_entries; i++) {
   temp = ntohs(list[i]);
   if (temp >= stcb->asoc.streamincnt) {
    continue;
   }
   stcb->asoc.strmin[temp].last_mid_delivered = 0xffffffff;
  }
 } else {
  list = ((void*)0);
  for (i = 0; i < stcb->asoc.streamincnt; i++) {
   stcb->asoc.strmin[i].last_mid_delivered = 0xffffffff;
  }
 }
 sctp_ulp_notify(SCTP_NOTIFY_STR_RESET_RECV, stcb, number_entries, (void *)list, SCTP_SO_NOT_LOCKED);
}

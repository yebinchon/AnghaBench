
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_7__ {int (* sctp_ss_add_to_stream ) (struct sctp_tcb*,TYPE_4__*,int *,int *,int) ;} ;
struct TYPE_8__ {size_t streamoutcnt; int * strmout; TYPE_3__ ss_functions; } ;
struct sctp_tcb {TYPE_4__ asoc; } ;
struct TYPE_5__ {int wheel; } ;
struct TYPE_6__ {TYPE_1__ out; int * last_out_stream; int * locked_on_sending; } ;
struct sctp_association {TYPE_2__ ss_data; } ;


 int SCTP_TCB_SEND_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_SEND_UNLOCK (struct sctp_tcb*) ;
 int TAILQ_INIT (int *) ;
 int stub1 (struct sctp_tcb*,TYPE_4__*,int *,int *,int) ;

__attribute__((used)) static void
sctp_ss_default_init(struct sctp_tcb *stcb, struct sctp_association *asoc,
    int holds_lock)
{
 uint16_t i;

 if (holds_lock == 0) {
  SCTP_TCB_SEND_LOCK(stcb);
 }
 asoc->ss_data.locked_on_sending = ((void*)0);
 asoc->ss_data.last_out_stream = ((void*)0);
 TAILQ_INIT(&asoc->ss_data.out.wheel);





 for (i = 0; i < stcb->asoc.streamoutcnt; i++) {
  stcb->asoc.ss_functions.sctp_ss_add_to_stream(stcb, &stcb->asoc,
      &stcb->asoc.strmout[i],
      ((void*)0), 1);
 }
 if (holds_lock == 0) {
  SCTP_TCB_SEND_UNLOCK(stcb);
 }
 return;
}

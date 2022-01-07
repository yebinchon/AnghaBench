
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct sctp_stream_out* last_out_stream; struct sctp_stream_out* locked_on_sending; } ;
struct TYPE_7__ {TYPE_1__ ss_data; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_8__ {int * tqe_prev; int * tqe_next; } ;
struct TYPE_9__ {int rounds; TYPE_3__ next_spoke; } ;
struct TYPE_10__ {TYPE_4__ fb; } ;
struct sctp_stream_out {TYPE_5__ ss_params; } ;



__attribute__((used)) static void
sctp_ss_fb_init_stream(struct sctp_tcb *stcb, struct sctp_stream_out *strq, struct sctp_stream_out *with_strq)
{
 if (with_strq != ((void*)0)) {
  if (stcb->asoc.ss_data.locked_on_sending == with_strq) {
   stcb->asoc.ss_data.locked_on_sending = strq;
  }
  if (stcb->asoc.ss_data.last_out_stream == with_strq) {
   stcb->asoc.ss_data.last_out_stream = strq;
  }
 }
 strq->ss_params.fb.next_spoke.tqe_next = ((void*)0);
 strq->ss_params.fb.next_spoke.tqe_prev = ((void*)0);
 if (with_strq != ((void*)0)) {
  strq->ss_params.fb.rounds = with_strq->ss_params.fb.rounds;
 } else {
  strq->ss_params.fb.rounds = -1;
 }
 return;
}

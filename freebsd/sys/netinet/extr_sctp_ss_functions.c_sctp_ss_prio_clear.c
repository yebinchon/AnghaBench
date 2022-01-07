
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sctp_tcb {int dummy; } ;
struct TYPE_10__ {int * tqe_prev; int * tqe_next; } ;
struct TYPE_11__ {TYPE_3__ next_spoke; scalar_t__ priority; } ;
struct TYPE_12__ {TYPE_4__ prio; } ;
struct sctp_stream_out {TYPE_5__ ss_params; } ;
struct TYPE_8__ {int wheel; } ;
struct TYPE_13__ {int * last_out_stream; TYPE_1__ out; } ;
struct sctp_association {TYPE_6__ ss_data; } ;
struct TYPE_9__ {int next_spoke; } ;
struct TYPE_14__ {TYPE_2__ prio; } ;


 int SCTP_TCB_SEND_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_SEND_UNLOCK (struct sctp_tcb*) ;
 int TAILQ_EMPTY (int *) ;
 struct sctp_stream_out* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct sctp_stream_out*,int ) ;
 TYPE_7__ ss_params ;

__attribute__((used)) static void
sctp_ss_prio_clear(struct sctp_tcb *stcb, struct sctp_association *asoc,
    int clear_values, int holds_lock)
{
 if (holds_lock == 0) {
  SCTP_TCB_SEND_LOCK(stcb);
 }
 while (!TAILQ_EMPTY(&asoc->ss_data.out.wheel)) {
  struct sctp_stream_out *strq;

  strq = TAILQ_FIRST(&asoc->ss_data.out.wheel);
  if (clear_values) {
   strq->ss_params.prio.priority = 0;
  }
  TAILQ_REMOVE(&asoc->ss_data.out.wheel, strq, ss_params.prio.next_spoke);
  strq->ss_params.prio.next_spoke.tqe_next = ((void*)0);
  strq->ss_params.prio.next_spoke.tqe_prev = ((void*)0);

 }
 asoc->ss_data.last_out_stream = ((void*)0);
 if (holds_lock == 0) {
  SCTP_TCB_SEND_UNLOCK(stcb);
 }
 return;
}

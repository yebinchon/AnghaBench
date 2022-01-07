
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_tcb {int dummy; } ;
struct TYPE_4__ {int * tqe_prev; int * tqe_next; } ;
struct sctp_stream_queue_pending {TYPE_1__ ss_next; } ;
struct TYPE_5__ {int list; } ;
struct TYPE_6__ {TYPE_2__ out; } ;
struct sctp_association {TYPE_3__ ss_data; } ;


 int SCTP_TCB_SEND_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_SEND_UNLOCK (struct sctp_tcb*) ;
 int TAILQ_EMPTY (int *) ;
 struct sctp_stream_queue_pending* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct sctp_stream_queue_pending*,int ) ;
 int ss_next ;

__attribute__((used)) static void
sctp_ss_fcfs_clear(struct sctp_tcb *stcb, struct sctp_association *asoc,
    int clear_values, int holds_lock)
{
 struct sctp_stream_queue_pending *sp;

 if (clear_values) {
  if (holds_lock == 0) {
   SCTP_TCB_SEND_LOCK(stcb);
  }
  while (!TAILQ_EMPTY(&asoc->ss_data.out.list)) {
   sp = TAILQ_FIRST(&asoc->ss_data.out.list);
   TAILQ_REMOVE(&asoc->ss_data.out.list, sp, ss_next);
   sp->ss_next.tqe_next = ((void*)0);
   sp->ss_next.tqe_prev = ((void*)0);
  }
  if (holds_lock == 0) {
   SCTP_TCB_SEND_UNLOCK(stcb);
  }
 }
 return;
}

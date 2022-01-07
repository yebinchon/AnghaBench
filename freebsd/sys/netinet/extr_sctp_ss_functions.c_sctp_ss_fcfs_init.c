
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_7__ {size_t streamoutcnt; TYPE_4__* strmout; } ;
struct sctp_tcb {TYPE_3__ asoc; } ;
struct sctp_stream_queue_pending {int dummy; } ;
struct TYPE_5__ {int list; } ;
struct TYPE_6__ {TYPE_1__ out; } ;
struct sctp_association {TYPE_2__ ss_data; } ;
struct TYPE_8__ {int outqueue; } ;


 int SCTP_TCB_SEND_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_SEND_UNLOCK (struct sctp_tcb*) ;
 struct sctp_stream_queue_pending* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 struct sctp_stream_queue_pending* TAILQ_NEXT (struct sctp_stream_queue_pending*,int ) ;
 int next ;
 int sctp_ss_fcfs_add (struct sctp_tcb*,TYPE_3__*,TYPE_4__*,struct sctp_stream_queue_pending*,int) ;

__attribute__((used)) static void
sctp_ss_fcfs_init(struct sctp_tcb *stcb, struct sctp_association *asoc,
    int holds_lock)
{
 uint32_t x, n = 0, add_more = 1;
 struct sctp_stream_queue_pending *sp;
 uint16_t i;

 if (holds_lock == 0) {
  SCTP_TCB_SEND_LOCK(stcb);
 }
 TAILQ_INIT(&asoc->ss_data.out.list);





 while (add_more) {
  add_more = 0;
  for (i = 0; i < stcb->asoc.streamoutcnt; i++) {
   sp = TAILQ_FIRST(&stcb->asoc.strmout[i].outqueue);
   x = 0;

   while (sp != ((void*)0) && x < n) {
    sp = TAILQ_NEXT(sp, next);
    x++;
   }
   if (sp != ((void*)0)) {
    sctp_ss_fcfs_add(stcb, &stcb->asoc, &stcb->asoc.strmout[i], sp, 1);
    add_more = 1;
   }
  }
  n++;
 }
 if (holds_lock == 0) {
  SCTP_TCB_SEND_UNLOCK(stcb);
 }
 return;
}

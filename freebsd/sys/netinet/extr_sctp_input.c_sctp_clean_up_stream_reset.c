
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tmit_chunk {int * data; int whoTo; } ;
struct sctp_association {int ctrl_queue_cnt; int control_send_queue; struct sctp_tmit_chunk* str_reset; } ;
struct sctp_tcb {int sctp_ep; struct sctp_association asoc; } ;


 scalar_t__ SCTP_FROM_SCTP_INPUT ;
 scalar_t__ SCTP_LOC_28 ;
 int SCTP_SO_NOT_LOCKED ;
 int SCTP_TIMER_TYPE_STRRESET ;
 int TAILQ_REMOVE (int *,struct sctp_tmit_chunk*,int ) ;
 int sctp_free_a_chunk (struct sctp_tcb*,struct sctp_tmit_chunk*,int ) ;
 int sctp_m_freem (int *) ;
 int sctp_next ;
 int sctp_timer_stop (int ,int ,struct sctp_tcb*,int ,scalar_t__) ;

__attribute__((used)) static void
sctp_clean_up_stream_reset(struct sctp_tcb *stcb)
{
 struct sctp_association *asoc;
 struct sctp_tmit_chunk *chk;

 asoc = &stcb->asoc;
 chk = asoc->str_reset;
 if (chk == ((void*)0)) {
  return;
 }
 asoc->str_reset = ((void*)0);
 sctp_timer_stop(SCTP_TIMER_TYPE_STRRESET, stcb->sctp_ep, stcb,
     chk->whoTo, SCTP_FROM_SCTP_INPUT + SCTP_LOC_28);
 TAILQ_REMOVE(&asoc->control_send_queue, chk, sctp_next);
 asoc->ctrl_queue_cnt--;
 if (chk->data) {
  sctp_m_freem(chk->data);
  chk->data = ((void*)0);
 }
 sctp_free_a_chunk(stcb, chk, SCTP_SO_NOT_LOCKED);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int rcv_flags; int ppid; int tsn; int fsn; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct sctp_tmit_chunk {TYPE_2__ rec; int * data; scalar_t__ send_size; } ;
struct sctp_tcb {int sctp_ep; } ;
struct sctp_stream_in {int inqueue; int uno_inqueue; scalar_t__ pd_api_started; } ;
struct sctp_queued_to_read {int first_frag_seen; scalar_t__ on_strm_q; int end_added; int last_frag_seen; scalar_t__ pdapi_started; scalar_t__ on_read_q; int sinfo_ppid; int sinfo_tsn; int fsn_included; int * data; } ;
struct sctp_association {int cnt_on_all_streams; int cnt_on_reasm_queue; int size_on_reasm_queue; } ;


 int SCTP_DATA_FIRST_FRAG ;
 int SCTP_DATA_LAST_FRAG ;
 int SCTP_INP_READ_LOCK (int ) ;
 int SCTP_INP_READ_UNLOCK (int ) ;
 scalar_t__ SCTP_ON_ORDERED ;
 scalar_t__ SCTP_ON_UNORDERED ;
 int SCTP_SO_NOT_LOCKED ;
 int TAILQ_REMOVE (int *,struct sctp_queued_to_read*,int ) ;
 int next_instrm ;
 int panic (char*,struct sctp_queued_to_read*,scalar_t__) ;
 int sctp_add_to_tail_pointer (struct sctp_queued_to_read*,int *,int *) ;
 int sctp_free_a_chunk (struct sctp_tcb*,struct sctp_tmit_chunk*,int ) ;
 int sctp_mark_non_revokable (struct sctp_association*,int ) ;
 int sctp_setup_tail_pointer (struct sctp_queued_to_read*) ;
 int sctp_ucount_decr (int ) ;

uint32_t
sctp_add_chk_to_control(struct sctp_queued_to_read *control,
    struct sctp_stream_in *strm,
    struct sctp_tcb *stcb, struct sctp_association *asoc,
    struct sctp_tmit_chunk *chk, int hold_rlock)
{




 uint32_t added = 0;
 int i_locked = 0;

 if (control->on_read_q && (hold_rlock == 0)) {



  SCTP_INP_READ_LOCK(stcb->sctp_ep);
  i_locked = 1;
 }
 if (control->data == ((void*)0)) {
  control->data = chk->data;
  sctp_setup_tail_pointer(control);
 } else {
  sctp_add_to_tail_pointer(control, chk->data, &added);
 }
 control->fsn_included = chk->rec.data.fsn;
 asoc->size_on_reasm_queue -= chk->send_size;
 sctp_ucount_decr(asoc->cnt_on_reasm_queue);
 sctp_mark_non_revokable(asoc, chk->rec.data.tsn);
 chk->data = ((void*)0);
 if (chk->rec.data.rcv_flags & SCTP_DATA_FIRST_FRAG) {
  control->first_frag_seen = 1;
  control->sinfo_tsn = chk->rec.data.tsn;
  control->sinfo_ppid = chk->rec.data.ppid;
 }
 if (chk->rec.data.rcv_flags & SCTP_DATA_LAST_FRAG) {

  if ((control->on_strm_q) && (control->on_read_q)) {
   if (control->pdapi_started) {
    control->pdapi_started = 0;
    strm->pd_api_started = 0;
   }
   if (control->on_strm_q == SCTP_ON_UNORDERED) {

    TAILQ_REMOVE(&strm->uno_inqueue, control, next_instrm);
    control->on_strm_q = 0;
   } else if (control->on_strm_q == SCTP_ON_ORDERED) {

    TAILQ_REMOVE(&strm->inqueue, control, next_instrm);





    sctp_ucount_decr(asoc->cnt_on_all_streams);
    control->on_strm_q = 0;





   }
  }
  control->end_added = 1;
  control->last_frag_seen = 1;
 }
 if (i_locked) {
  SCTP_INP_READ_UNLOCK(stcb->sctp_ep);
 }
 sctp_free_a_chunk(stcb, chk, SCTP_SO_NOT_LOCKED);
 return (added);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sctp_tcb {TYPE_2__* sctp_socket; TYPE_1__* sctp_ep; } ;
struct sctp_stream_in {scalar_t__ pd_api_started; scalar_t__ last_mid_delivered; int inqueue; int uno_inqueue; } ;
struct sctp_queued_to_read {scalar_t__ end_added; scalar_t__ mid; scalar_t__ on_strm_q; scalar_t__ on_read_q; scalar_t__ length; int pdapi_started; int sinfo_flags; scalar_t__ last_frag_seen; int sinfo_tsn; scalar_t__ first_frag_seen; int fsn_included; int top_fsn; } ;
struct sctp_association {scalar_t__ idata_supported; scalar_t__ size_on_all_streams; int cnt_on_all_streams; } ;
struct TYPE_4__ {int so_rcv; } ;
struct TYPE_3__ {scalar_t__ partial_delivery_point; } ;


 int SCTPDBG (int ,char*,struct sctp_queued_to_read*,scalar_t__,scalar_t__,int ,int ,...) ;
 int SCTP_DATA_NOT_FRAG ;
 int SCTP_DEBUG_XXX ;
 scalar_t__ SCTP_MID_EQ (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ SCTP_ON_ORDERED ;
 scalar_t__ SCTP_ON_UNORDERED ;
 int SCTP_PARTIAL_DELIVERY_SHIFT ;
 int SCTP_SB_LIMIT_RCV (TYPE_2__*) ;
 int SCTP_SO_NOT_LOCKED ;
 int SCTP_STAT_INCR_COUNTER64 (int ) ;
 struct sctp_queued_to_read* TAILQ_FIRST (int *) ;
 struct sctp_queued_to_read* TAILQ_NEXT (struct sctp_queued_to_read*,int ) ;
 int TAILQ_REMOVE (int *,struct sctp_queued_to_read*,int ) ;
 scalar_t__ min (int,scalar_t__) ;
 int next_instrm ;
 int panic (char*,struct sctp_queued_to_read*,scalar_t__) ;
 int sctp_add_to_readq (TYPE_1__*,struct sctp_tcb*,struct sctp_queued_to_read*,int *,scalar_t__,int,int ) ;
 scalar_t__ sctp_handle_old_unordered_data (struct sctp_tcb*,struct sctp_association*,struct sctp_stream_in*,struct sctp_queued_to_read*,scalar_t__,int) ;
 int sctp_mark_non_revokable (struct sctp_association*,int ) ;
 int sctp_ucount_decr (int ) ;
 int sctps_reasmusrmsgs ;

__attribute__((used)) static int
sctp_deliver_reasm_check(struct sctp_tcb *stcb, struct sctp_association *asoc,
    struct sctp_stream_in *strm, int inp_read_lock_held)
{






 struct sctp_queued_to_read *control, *nctl = ((void*)0);
 uint32_t next_to_del;
 uint32_t pd_point;
 int ret = 0;

 if (stcb->sctp_socket) {
  pd_point = min(SCTP_SB_LIMIT_RCV(stcb->sctp_socket) >> SCTP_PARTIAL_DELIVERY_SHIFT,
      stcb->sctp_ep->partial_delivery_point);
 } else {
  pd_point = stcb->sctp_ep->partial_delivery_point;
 }
 control = TAILQ_FIRST(&strm->uno_inqueue);

 if ((control != ((void*)0)) &&
     (asoc->idata_supported == 0)) {

  if (sctp_handle_old_unordered_data(stcb, asoc, strm, control, pd_point, inp_read_lock_held)) {
   goto done_un;
  }
 }
 if (strm->pd_api_started) {

  return (0);
 }
 while (control) {
  SCTPDBG(SCTP_DEBUG_XXX, "Looking at control: %p e(%d) ssn: %u top_fsn: %u inc_fsn: %u -uo\n",
      control, control->end_added, control->mid, control->top_fsn, control->fsn_included);
  nctl = TAILQ_NEXT(control, next_instrm);
  if (control->end_added) {

   if (control->on_strm_q) {






    SCTP_STAT_INCR_COUNTER64(sctps_reasmusrmsgs);
    TAILQ_REMOVE(&strm->uno_inqueue, control, next_instrm);
    control->on_strm_q = 0;
   }
   if (control->on_read_q == 0) {
    sctp_add_to_readq(stcb->sctp_ep, stcb,
        control,
        &stcb->sctp_socket->so_rcv, control->end_added,
        inp_read_lock_held, SCTP_SO_NOT_LOCKED);
   }
  } else {

   if ((control->length >= pd_point) && (strm->pd_api_started == 0)) {
    strm->pd_api_started = 1;
    control->pdapi_started = 1;
    sctp_add_to_readq(stcb->sctp_ep, stcb,
        control,
        &stcb->sctp_socket->so_rcv, control->end_added,
        inp_read_lock_held, SCTP_SO_NOT_LOCKED);

    break;
   }
  }
  control = nctl;
 }
done_un:
 control = TAILQ_FIRST(&strm->inqueue);
 if (strm->pd_api_started) {

  return (0);
 }
 if (control == ((void*)0)) {
  return (ret);
 }
 if (SCTP_MID_EQ(asoc->idata_supported, strm->last_mid_delivered, control->mid)) {






  nctl = TAILQ_NEXT(control, next_instrm);
  SCTPDBG(SCTP_DEBUG_XXX,
      "Looking at control: %p e(%d) ssn: %u top_fsn: %u inc_fsn: %u (lastdel: %u)- o\n",
      control, control->end_added, control->mid,
      control->top_fsn, control->fsn_included,
      strm->last_mid_delivered);
  if (control->end_added) {
   if (control->on_strm_q) {






    SCTP_STAT_INCR_COUNTER64(sctps_reasmusrmsgs);
    TAILQ_REMOVE(&strm->inqueue, control, next_instrm);
    if (asoc->size_on_all_streams >= control->length) {
     asoc->size_on_all_streams -= control->length;
    } else {



     asoc->size_on_all_streams = 0;

    }
    sctp_ucount_decr(asoc->cnt_on_all_streams);
    control->on_strm_q = 0;
   }
   if (strm->pd_api_started && control->pdapi_started) {
    control->pdapi_started = 0;
    strm->pd_api_started = 0;
   }
   if (control->on_read_q == 0) {
    sctp_add_to_readq(stcb->sctp_ep, stcb,
        control,
        &stcb->sctp_socket->so_rcv, control->end_added,
        inp_read_lock_held, SCTP_SO_NOT_LOCKED);
   }
   control = nctl;
  }
 }
 if (strm->pd_api_started) {




  return (0);
 }
deliver_more:
 next_to_del = strm->last_mid_delivered + 1;
 if (control) {
  SCTPDBG(SCTP_DEBUG_XXX,
      "Looking at control: %p e(%d) ssn: %u top_fsn: %u inc_fsn: %u (nxtdel: %u)- o\n",
      control, control->end_added, control->mid, control->top_fsn, control->fsn_included,
      next_to_del);
  nctl = TAILQ_NEXT(control, next_instrm);
  if (SCTP_MID_EQ(asoc->idata_supported, control->mid, next_to_del) &&
      (control->first_frag_seen)) {
   int done;


   if (control->end_added) {

    if (control->on_strm_q) {






     SCTP_STAT_INCR_COUNTER64(sctps_reasmusrmsgs);
     TAILQ_REMOVE(&strm->inqueue, control, next_instrm);
     if (asoc->size_on_all_streams >= control->length) {
      asoc->size_on_all_streams -= control->length;
     } else {



      asoc->size_on_all_streams = 0;

     }
     sctp_ucount_decr(asoc->cnt_on_all_streams);
     control->on_strm_q = 0;
    }
    ret++;
   }
   if (((control->sinfo_flags >> 8) & SCTP_DATA_NOT_FRAG) == SCTP_DATA_NOT_FRAG) {




    sctp_mark_non_revokable(asoc, control->sinfo_tsn);
   } else if (control->end_added == 0) {




    if ((control->length < pd_point) || (strm->pd_api_started)) {




     goto out;
    }
   }
   done = (control->end_added) && (control->last_frag_seen);
   if (control->on_read_q == 0) {
    if (!done) {
     if (asoc->size_on_all_streams >= control->length) {
      asoc->size_on_all_streams -= control->length;
     } else {



      asoc->size_on_all_streams = 0;

     }
     strm->pd_api_started = 1;
     control->pdapi_started = 1;
    }
    sctp_add_to_readq(stcb->sctp_ep, stcb,
        control,
        &stcb->sctp_socket->so_rcv, control->end_added,
        inp_read_lock_held, SCTP_SO_NOT_LOCKED);
   }
   strm->last_mid_delivered = next_to_del;
   if (done) {
    control = nctl;
    goto deliver_more;
   }
  }
 }
out:
 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct sctp_tmit_chunk {int dummy; } ;
struct sctp_association {int str_reset_seq_in; int local_strreset_support; scalar_t__ stream_reset_out_is_outstanding; size_t streamoutcnt; void** last_reset_action; TYPE_2__* strmout; } ;
struct sctp_tcb {struct sctp_association asoc; } ;
struct TYPE_3__ {size_t param_length; } ;
struct sctp_stream_reset_in_request {size_t* list_of_streams; TYPE_1__ ph; int request_seq; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 int SCTP_ENABLE_RESET_STREAM_REQ ;
 int SCTP_SO_NOT_LOCKED ;
 scalar_t__ SCTP_STREAM_OPEN ;
 void* SCTP_STREAM_RESET_PENDING ;
 void* SCTP_STREAM_RESET_RESULT_DENIED ;
 void* SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO ;
 void* SCTP_STREAM_RESET_RESULT_ERR_IN_PROGRESS ;
 void* SCTP_STREAM_RESET_RESULT_PERFORMED ;
 int ntohl (int ) ;
 void* ntohs (size_t) ;
 int sctp_add_stream_reset_result (struct sctp_tmit_chunk*,int,void*) ;
 int sctp_send_stream_reset_out_if_possible (struct sctp_tcb*,int ) ;

__attribute__((used)) static void
sctp_handle_str_reset_request_in(struct sctp_tcb *stcb,
    struct sctp_tmit_chunk *chk,
    struct sctp_stream_reset_in_request *req, int trunc)
{
 uint32_t seq;
 int len, i;
 int number_entries;
 uint16_t temp;





 struct sctp_association *asoc = &stcb->asoc;

 seq = ntohl(req->request_seq);
 if (asoc->str_reset_seq_in == seq) {
  asoc->last_reset_action[1] = asoc->last_reset_action[0];
  if (!(asoc->local_strreset_support & SCTP_ENABLE_RESET_STREAM_REQ)) {
   asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_DENIED;
  } else if (trunc) {

   asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_DENIED;
  } else if (stcb->asoc.stream_reset_out_is_outstanding == 0) {
   len = ntohs(req->ph.param_length);
   number_entries = ((len - sizeof(struct sctp_stream_reset_in_request)) / sizeof(uint16_t));
   if (number_entries) {
    for (i = 0; i < number_entries; i++) {
     temp = ntohs(req->list_of_streams[i]);
     if (temp >= stcb->asoc.streamoutcnt) {
      asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_DENIED;
      goto bad_boy;
     }
     req->list_of_streams[i] = temp;
    }
    for (i = 0; i < number_entries; i++) {
     if (stcb->asoc.strmout[req->list_of_streams[i]].state == SCTP_STREAM_OPEN) {
      stcb->asoc.strmout[req->list_of_streams[i]].state = SCTP_STREAM_RESET_PENDING;
     }
    }
   } else {

    for (i = 0; i < stcb->asoc.streamoutcnt; i++) {
     if (stcb->asoc.strmout[i].state == SCTP_STREAM_OPEN)
      stcb->asoc.strmout[i].state = SCTP_STREAM_RESET_PENDING;
    }
   }
   asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_PERFORMED;
  } else {

   asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_ERR_IN_PROGRESS;
  }
bad_boy:
  sctp_add_stream_reset_result(chk, seq, asoc->last_reset_action[0]);
  asoc->str_reset_seq_in++;
 } else if (asoc->str_reset_seq_in - 1 == seq) {
  sctp_add_stream_reset_result(chk, seq, asoc->last_reset_action[0]);
 } else if (asoc->str_reset_seq_in - 2 == seq) {
  sctp_add_stream_reset_result(chk, seq, asoc->last_reset_action[1]);
 } else {
  sctp_add_stream_reset_result(chk, seq, SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO);
 }
 sctp_send_stream_reset_out_if_possible(stcb, SCTP_SO_NOT_LOCKED);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct sctp_tmit_chunk {int dummy; } ;
struct sctp_association {int str_reset_seq_in; int local_strreset_support; int streamoutcnt; void** last_reset_action; scalar_t__ stream_reset_outstanding; } ;
struct sctp_tcb {struct sctp_association asoc; } ;
struct sctp_stream_reset_add_strm {int number_of_streams; int request_seq; } ;


 int SCTP_ENABLE_CHANGE_ASSOC_REQ ;
 void* SCTP_STREAM_RESET_RESULT_DENIED ;
 void* SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO ;
 void* SCTP_STREAM_RESET_RESULT_ERR_IN_PROGRESS ;
 void* SCTP_STREAM_RESET_RESULT_PERFORMED ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int sctp_add_stream_reset_result (struct sctp_tmit_chunk*,int,void*) ;
 scalar_t__ sctp_send_str_reset_req (struct sctp_tcb*,int ,int *,int ,int ,int,scalar_t__,int ,int) ;

__attribute__((used)) static void
sctp_handle_str_reset_add_out_strm(struct sctp_tcb *stcb, struct sctp_tmit_chunk *chk,
    struct sctp_stream_reset_add_strm *str_add)
{




 uint16_t num_stream;
 uint32_t seq;
 struct sctp_association *asoc = &stcb->asoc;


 seq = ntohl(str_add->request_seq);
 num_stream = ntohs(str_add->number_of_streams);

 if (asoc->str_reset_seq_in == seq) {
  stcb->asoc.last_reset_action[1] = stcb->asoc.last_reset_action[0];
  if (!(asoc->local_strreset_support & SCTP_ENABLE_CHANGE_ASSOC_REQ)) {
   asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_DENIED;
  } else if (stcb->asoc.stream_reset_outstanding) {

   stcb->asoc.last_reset_action[0] = SCTP_STREAM_RESET_RESULT_ERR_IN_PROGRESS;
  } else {

   int mychk;

   mychk = stcb->asoc.streamoutcnt;
   mychk += num_stream;
   if (mychk < 0x10000) {
    stcb->asoc.last_reset_action[0] = SCTP_STREAM_RESET_RESULT_PERFORMED;
    if (sctp_send_str_reset_req(stcb, 0, ((void*)0), 0, 0, 1, num_stream, 0, 1)) {
     stcb->asoc.last_reset_action[0] = SCTP_STREAM_RESET_RESULT_DENIED;
    }
   } else {
    stcb->asoc.last_reset_action[0] = SCTP_STREAM_RESET_RESULT_DENIED;
   }
  }
  sctp_add_stream_reset_result(chk, seq, stcb->asoc.last_reset_action[0]);
  asoc->str_reset_seq_in++;
 } else if ((asoc->str_reset_seq_in - 1) == seq) {




  sctp_add_stream_reset_result(chk, seq, asoc->last_reset_action[0]);
 } else if ((asoc->str_reset_seq_in - 2) == seq) {




  sctp_add_stream_reset_result(chk, seq, asoc->last_reset_action[1]);
 } else {
  sctp_add_stream_reset_result(chk, seq, SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO);
 }
}

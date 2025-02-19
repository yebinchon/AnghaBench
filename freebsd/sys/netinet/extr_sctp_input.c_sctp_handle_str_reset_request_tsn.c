
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct sctp_tmit_chunk {int dummy; } ;
struct sctp_association {int str_reset_seq_in; int local_strreset_support; scalar_t__* last_base_tsnsent; int * last_sending_seq; int * last_reset_action; scalar_t__ mapping_array_base_tsn; int sending_seq; int mapping_array_size; int nr_mapping_array; scalar_t__ highest_tsn_inside_map; scalar_t__ highest_tsn_inside_nr_map; int mapping_array; scalar_t__ cumulative_tsn; scalar_t__ tsn_last_delivered; } ;
struct sctp_tcb {struct sctp_association asoc; } ;
struct sctp_stream_reset_tsn_request {int request_seq; } ;
struct TYPE_2__ {scalar_t__ chunk_flags; int chunk_type; int chunk_length; } ;
struct sctp_forward_tsn_chunk {int new_cumulative_tsn; TYPE_1__ ch; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_ENABLE_CHANGE_ASSOC_REQ ;
 int SCTP_FORWARD_CUM_TSN ;
 int SCTP_MAP_LOGGING_ENABLE ;
 int SCTP_MAP_SLIDE_RESULT ;
 int SCTP_STREAM_RESET_RESULT_DENIED ;
 int SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO ;
 int SCTP_STREAM_RESET_RESULT_PERFORMED ;
 scalar_t__ SCTP_STREAM_RESET_TSN_DELTA ;
 int atomic_add_int (int *,int) ;
 int htonl (scalar_t__) ;
 int htons (int) ;
 int memset (int ,int ,int ) ;
 int ntohl (int ) ;
 int sctp_add_stream_reset_result (struct sctp_tmit_chunk*,int,int ) ;
 int sctp_add_stream_reset_result_tsn (struct sctp_tmit_chunk*,int,int ,int ,scalar_t__) ;
 int sctp_handle_forward_tsn (struct sctp_tcb*,struct sctp_forward_tsn_chunk*,int*,int *,int ) ;
 int sctp_log_map (int ,int,scalar_t__,int ) ;
 int sctp_logging_level ;
 int sctp_notify_stream_reset_tsn (struct sctp_tcb*,int ,scalar_t__,int ) ;
 int sctp_reset_in_stream (struct sctp_tcb*,int ,int *) ;
 int sctp_reset_out_streams (struct sctp_tcb*,int ,int *) ;

__attribute__((used)) static int
sctp_handle_str_reset_request_tsn(struct sctp_tcb *stcb,
    struct sctp_tmit_chunk *chk,
    struct sctp_stream_reset_tsn_request *req)
{






 struct sctp_forward_tsn_chunk fwdtsn;
 struct sctp_association *asoc = &stcb->asoc;
 int abort_flag = 0;
 uint32_t seq;

 seq = ntohl(req->request_seq);
 if (asoc->str_reset_seq_in == seq) {
  asoc->last_reset_action[1] = stcb->asoc.last_reset_action[0];
  if (!(asoc->local_strreset_support & SCTP_ENABLE_CHANGE_ASSOC_REQ)) {
   asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_DENIED;
  } else {
   fwdtsn.ch.chunk_length = htons(sizeof(struct sctp_forward_tsn_chunk));
   fwdtsn.ch.chunk_type = SCTP_FORWARD_CUM_TSN;
   fwdtsn.ch.chunk_flags = 0;
   fwdtsn.new_cumulative_tsn = htonl(stcb->asoc.highest_tsn_inside_map + 1);
   sctp_handle_forward_tsn(stcb, &fwdtsn, &abort_flag, ((void*)0), 0);
   if (abort_flag) {
    return (1);
   }
   asoc->highest_tsn_inside_map += SCTP_STREAM_RESET_TSN_DELTA;
   if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_MAP_LOGGING_ENABLE) {
    sctp_log_map(0, 10, asoc->highest_tsn_inside_map, SCTP_MAP_SLIDE_RESULT);
   }
   asoc->tsn_last_delivered = asoc->cumulative_tsn = asoc->highest_tsn_inside_map;
   asoc->mapping_array_base_tsn = asoc->highest_tsn_inside_map + 1;
   memset(asoc->mapping_array, 0, asoc->mapping_array_size);
   asoc->highest_tsn_inside_nr_map = asoc->highest_tsn_inside_map;
   memset(asoc->nr_mapping_array, 0, asoc->mapping_array_size);
   atomic_add_int(&asoc->sending_seq, 1);

   asoc->last_sending_seq[1] = asoc->last_sending_seq[0];
   asoc->last_sending_seq[0] = asoc->sending_seq;
   asoc->last_base_tsnsent[1] = asoc->last_base_tsnsent[0];
   asoc->last_base_tsnsent[0] = asoc->mapping_array_base_tsn;
   sctp_reset_out_streams(stcb, 0, (uint16_t *)((void*)0));
   sctp_reset_in_stream(stcb, 0, (uint16_t *)((void*)0));
   asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_PERFORMED;
   sctp_notify_stream_reset_tsn(stcb, asoc->sending_seq, (asoc->mapping_array_base_tsn + 1), 0);
  }
  sctp_add_stream_reset_result_tsn(chk, seq, asoc->last_reset_action[0],
      asoc->last_sending_seq[0], asoc->last_base_tsnsent[0]);
  asoc->str_reset_seq_in++;
 } else if (asoc->str_reset_seq_in - 1 == seq) {
  sctp_add_stream_reset_result_tsn(chk, seq, asoc->last_reset_action[0],
      asoc->last_sending_seq[0], asoc->last_base_tsnsent[0]);
 } else if (asoc->str_reset_seq_in - 2 == seq) {
  sctp_add_stream_reset_result_tsn(chk, seq, asoc->last_reset_action[1],
      asoc->last_sending_seq[1], asoc->last_base_tsnsent[1]);
 } else {
  sctp_add_stream_reset_result(chk, seq, SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO);
 }
 return (0);
}
